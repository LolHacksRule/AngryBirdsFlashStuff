package §^U§
{
   import §#";§.§0"#§;
   import §%!j§.§%K§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §-"'§.§&"#§;
   import §-y§.§]D§;
   import §05§.§?s§;
   import §5u§.§-"#§;
   import §;<§.§'B§;
   import §;b§.§@"0§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import §]6§.§[f§;
   import §^!1§.§`!N§;
   
   public class §4!T§ extends §'B§
   {
      
      private static const §0"1§:Number = -250;
      
      public static const §%!Q§:String = "PauseStateBS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §0"1§ = -250;
            do
            {
               §%!Q§ = "PauseStateBS";
            }
            while(!_loc1_);
            
         }
      }
      
      private var §0H§:§[f§ = null;
      
      private var §#!q§:§&"#§;
      
      public function §4!T§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.§%!Q§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
            while(true)
            {
               §`!v§ = new §>!V§(this);
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            §`!v§.init(§]!M§.§"!V§.Views.View_LevelPauseBS[0]);
            if(_loc1_ || _loc2_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
            while(true)
            {
               §'_§.§=M§.background.§?!e§();
               while(_loc1_ || _loc1_)
               {
                  this.§94§();
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      private function §94§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§-"#§.§!#§ != null)
            {
               loop0:
               while(true)
               {
                  (§`!v§.getItemByName("TextField_LevelName") as §!!]§).§<!g§.text = §-"#§.§!#§;
                  addr213:
                  loop1:
                  while(true)
                  {
                     addr173:
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     §'_§.pause();
                     loop5:
                     while(true)
                     {
                        §%K§.§^!d§.isPaused = true;
                        loop6:
                        while(true)
                        {
                           §§push(this.§0H§);
                           loop7:
                           while(true)
                           {
                              if(§§pop() != null)
                              {
                                 if(_loc2_ || this)
                                 {
                                    continue loop0;
                                 }
                                 continue loop6;
                              }
                              addr75:
                              while(true)
                              {
                                 this.§0H§ = §]D§.§2!r§(§]D§.§@! §(§`!v§.getItemByName("Container_PauseMenu") as §6W§,{"x":0},null,0.25),§]D§.§@! §((§`!v§.getItemByName("MovieClip_DarkBG") as §@u§).mClip,{"alpha":1},{"alpha":0},0.25));
                                 addr117:
                                 while(_loc2_)
                                 {
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              addr60:
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue;
                              }
                              §§pop().addEventListener(§`!N§.COMPLETE,this.§<!b§);
                              while(_loc2_)
                              {
                                 addr74:
                                 §§push(this.§0H§);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§pop().play();
                                    if(_loc2_ || this)
                                    {
                                       addr42:
                                       if(!(_loc1_ && this))
                                       {
                                          return;
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             §§goto(addr173);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§'!N§(false);
                                                continue loop4;
                                             }
                                             addr189:
                                          }
                                       }
                                       continue loop1;
                                    }
                                    continue;
                                    continue;
                                 }
                                 addr53:
                                 while(true)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr60);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop().stop();
                                          continue loop6;
                                       }
                                       addr148:
                                    }
                                    §§goto(addr74);
                                 }
                                 continue loop7;
                              }
                              §§goto(addr117);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               (§`!v§.getItemByName("Container_PauseMenu") as §6W§).x = §0"1§;
               §§goto(addr213);
            }
         }
         §§goto(addr189);
      }
      
      private function §<!b§(param1:§`!N§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0H§.removeEventListener(§`!N§.COMPLETE,this.§<!b§);
         }
         do
         {
            this.§'!N§(true);
         }
         while(_loc3_);
         
      }
      
      private function §'!N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§`!v§.getItemByName("Button_Resume") as §9"8§).setEnabled(param1);
            while(true)
            {
               (§`!v§.getItemByName("Button_Replay") as §9"8§).setEnabled(param1);
            }
            addr88:
         }
         while(true)
         {
            (§`!v§.getItemByName("Button_Help") as §9"8§).setEnabled(param1);
            for(; !_loc3_; (§`!v§.getItemByName("Button_Sound") as §9"8§).setEnabled(param1),if(_loc2_ || param1)
            {
               return;
            })
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr88);
            }
         }
      }
      
      private function §[!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§0H§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§0H§);
                     addr136:
                     while(true)
                     {
                        §§pop().stop();
                        addr137:
                        while(true)
                        {
                        }
                     }
                  }
                  addr134:
               }
               while(true)
               {
                  this.§0H§ = §]D§.§2!r§(§]D§.§@! §(§`!v§.getItemByName("Container_PauseMenu") as §6W§,{"x":§0"1§},null,0.25),§]D§.§@! §((§`!v§.getItemByName("MovieClip_DarkBG") as §@u§).mClip,{"alpha":0},{"alpha":1},0.25));
                  loop4:
                  while(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        §§push(this.§0H§);
                        loop5:
                        while(_loc2_ || this)
                        {
                           if(_loc2_)
                           {
                              §§pop().addEventListener(§`!N§.COMPLETE,this.§>!L§);
                              while(_loc2_ || _loc1_)
                              {
                                 continue loop5;
                                 §§pop().play();
                                 §§push(this.§0H§);
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr39);
                                 if(_loc2_ || this)
                                 {
                                    return;
                                 }
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr134);
                     }
                     §§goto(addr136);
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      protected function §>!L§(param1:§`!N§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§0H§.removeEventListener(§`!N§.COMPLETE,this.§>!L§);
         }
         do
         {
            mNextState = this.getPlayState();
         }
         while(!(_loc2_ || this));
         
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
            if(!_loc3_)
            {
               if(§§pop() == §'B§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!(_loc3_ && param1))
                     {
                        return §'B§.STATE_STATUS_COMPLETED;
                     }
                     if(_loc4_ || this)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           break;
                        }
                        addr89:
                        return _loc2_;
                     }
                  }
                  return §'B§.STATE_STATUS_RUNNING;
               }
            }
         }
         §§goto(addr89);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §%K§.§^!d§.isPaused = false;
               while(true)
               {
                  (§`!v§.getItemByName("Button_Resume") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  loop2:
                  while(true)
                  {
                     (§`!v§.getItemByName("Button_Replay") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     while(!_loc2_)
                     {
                        (§`!v§.getItemByName("Button_Help") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        while(_loc1_ || _loc1_)
                        {
                           continue loop2;
                           (§`!v§.getItemByName("Button_Sound") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           if(_loc1_)
                           {
                              return;
                              addr34:
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr34);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(_loc7_ || param1)
         {
            if("HELP" === _loc6_)
            {
               if(_loc7_ || param2)
               {
                  §§push(0);
                  if(_loc8_)
                  {
                     addr338:
                  }
               }
               else
               {
                  addr326:
                  §§push(3);
                  if(_loc8_)
                  {
                     addr366:
                  }
               }
            }
            else if("HELP_CLOSE" === _loc6_)
            {
               if(_loc7_ || param2)
               {
                  §§push(1);
                  if(_loc8_)
                  {
                     addr320:
                  }
               }
               else
               {
                  addr363:
                  §§push(6);
                  if(_loc7_)
                  {
                     §§goto(addr366);
                  }
                  else
                  {
                     addr388:
                  }
               }
            }
            else if("RESTART_LEVEL" === _loc6_)
            {
               if(_loc7_)
               {
                  §§push(2);
                  if(_loc7_)
                  {
                     §§goto(addr320);
                  }
                  §§goto(addr393);
               }
               else
               {
                  §§goto(addr363);
               }
            }
            else if("RESUME_LEVEL" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§goto(addr326);
               }
               else
               {
                  §§goto(addr335);
               }
            }
            else
            {
               if("TOGGLE_SOUNDS" === _loc6_)
               {
                  if(_loc7_)
                  {
                     addr335:
                     §§push(4);
                     if(_loc7_)
                     {
                        §§goto(addr338);
                     }
                  }
               }
               else if("TOGGLE_PARTICLES" === _loc6_)
               {
                  if(_loc7_ || param2)
                  {
                     §§push(5);
                     if(!_loc8_)
                     {
                        §§goto(addr393);
                     }
                     else
                     {
                        §§goto(addr388);
                     }
                  }
               }
               else if("FULLSCREEN_BUTTON" === _loc6_)
               {
                  if(!(_loc8_ && param3))
                  {
                     §§goto(addr363);
                  }
               }
               else if("MENU" !== _loc6_)
               {
                  addr393:
                  loop6:
                  switch(§§pop())
                  {
                     case 0:
                        this.§#!q§ = new §&"#§(§`!v§,§]!M§.§"!V§.Views.PopupView_PlayHelp[0]);
                        addr256:
                        this.§#!q§.open();
                        break;
                        addr271:
                        addr257:
                     case 1:
                        §§push(this.§#!q§);
                        if(_loc7_ || param3)
                        {
                           §§pop().close();
                           §'_§.pause();
                           addr238:
                           break;
                           addr238:
                           addr252:
                        }
                        else
                        {
                           §§goto(addr256);
                        }
                        break;
                     case 2:
                        mNextState = §@"0§.§%!Q§;
                        addr227:
                        if(_loc7_ || this)
                        {
                           §@"0§.§%P§(this.getPlayState());
                           break;
                           addr219:
                        }
                        else
                        {
                           §§goto(addr238);
                        }
                        break;
                     case 3:
                        this.§[!,§();
                        break;
                        addr213:
                     case 4:
                        addr188:
                        §§push(!AngryBirdsFP11.getSoundsEnabled());
                        loop0:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop1:
                           while(true)
                           {
                              if(_loc7_ || this)
                              {
                                 AngryBirdsFP11.setSoundsEnabled(_loc4_);
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(_loc4_);
                                       loop2:
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   (§`!v§.getItemByName("Button_Sound") as §9"8§).setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                   if(_loc7_ || param2)
                                                   {
                                                      if(_loc8_ && param1)
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         break loop2;
                                                      }
                                                   }
                                                   break loop6;
                                                }
                                                addr151:
                                             }
                                             else
                                             {
                                                (§`!v§.getItemByName("Button_Sound") as §9"8§).setComponentState(§>!D§.§;!M§);
                                                addr143:
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr271);
                                                }
                                             }
                                             break loop6;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr257);
                                       addr148:
                                    }
                                    else
                                    {
                                       §§goto(addr227);
                                    }
                                 }
                                 addr180:
                              }
                              else
                              {
                                 §§goto(addr213);
                              }
                           }
                           break loop6;
                        }
                        break;
                        addr189:
                     case 5:
                        §§push(§'_§.§&R§());
                        if(!_loc8_)
                        {
                           if(!(_loc8_ && param2))
                           {
                              addr123:
                              §§push(!§§pop());
                              if(!(_loc8_ && param3))
                              {
                                 _loc5_ = §§pop();
                                 §'_§.§?R§(_loc5_);
                                 §`!v§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                 break;
                                 addr131:
                                 addr107:
                                 addr102:
                              }
                              else
                              {
                                 §§goto(addr148);
                              }
                           }
                           else
                           {
                              §§goto(addr188);
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr123);
                     case 6:
                        §?s§.doJsCall("onFullscreenToggle");
                        addr85:
                        if(_loc7_)
                        {
                           if(_loc7_ || param3)
                           {
                              break;
                           }
                           §§goto(addr252);
                        }
                        else
                        {
                           §§goto(addr180);
                        }
                        §§goto(addr238);
                     case 7:
                        §?s§.doJsCall("onLevelMenuOpened");
                        if(!_loc8_)
                        {
                           if(!(_loc8_ && param1))
                           {
                              if(_loc7_)
                              {
                                 while(true)
                                 {
                                    mNextState = §&y§.§%!Q§;
                                    if(_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             §0"#§.§4"#§();
                                             if(_loc7_)
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         if(true)
                                                         {
                                                            break loop6;
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr131);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr85);
                                                }
                                                §§goto(addr219);
                                             }
                                             break loop6;
                                          }
                                          §§goto(addr151);
                                       }
                                       §§goto(addr143);
                                    }
                                    break loop6;
                                 }
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr102);
                        }
                  }
                  return;
                  §§push(8);
               }
               §§goto(addr393);
               if(!(_loc8_ && param1))
               {
                  §§goto(addr388);
               }
            }
            §§goto(addr393);
         }
         §§goto(addr335);
      }
   }
}
