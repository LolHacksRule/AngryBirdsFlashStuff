package §^U§
{
   import §#";§.§0"#§;
   import §%!0§.§%Q§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   
   public class §@!y§ extends §'B§
   {
      
      public static const §0"1§:Number = -250;
      
      public static const §%!Q§:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0"1§ = -250;
            do
            {
               §%!Q§ = "PauseState";
            }
            while(!_loc2_);
            
         }
      }
      
      protected var §0H§:§=!r§ = null;
      
      public function §@!y§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
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
            while(true)
            {
               §`!v§ = new §>!V§(this);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §`!v§.init(§]!M§.§"!V§.Views.View_LevelPause[0]);
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
         §§goto(addr68);
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
            this.§94§();
            while(true)
            {
               §'_§.§=M§.background.§?!e§();
               while(!_loc2_)
               {
                  this.§<Z§();
                  if(_loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      protected function §<Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!v§.getItemByName("Button_Help").setVisibility(false);
            while(true)
            {
               §`!v§.getItemByName("Button_Sound").setVisibility(false);
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §`!v§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §'I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§0H§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr69:
                     this.§0H§.stop();
                  }
                  do
                  {
                     this.§0H§ = null;
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               return;
            }
         }
         §§goto(addr69);
      }
      
      protected function §94§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§`!r§.§0B§ != null)
            {
               while(true)
               {
                  (§`!v§.getItemByName("TextField_LevelName") as §!!]§).§<!g§.text = §`!r§.§0B§;
                  addr166:
                  while(true)
                  {
                  }
               }
               addr147:
            }
            loop1:
            while(true)
            {
               (§`!v§.getItemByName("Container_PauseMenu") as §6W§).x = §0"1§;
               loop2:
               while(true)
               {
                  this.§'!N§(false);
                  loop3:
                  while(true)
                  {
                     §'_§.pause();
                     loop4:
                     while(true)
                     {
                        §`!v§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
                        loop5:
                        while(true)
                        {
                           this.§'I§();
                           while(true)
                           {
                              this.§0H§ = §7I§.§[E§.§]g§(§7I§.§[E§.§ ";§(§`!v§.getItemByName("Container_PauseMenu") as §6W§,{"x":0},null,0.25),§7I§.§[E§.§ ";§((§`!v§.getItemByName("MovieClip_DarkBG") as §@u§).mClip,{"alpha":1},{"alpha":0},0.25));
                              loop7:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(this.§0H§);
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().onComplete = this.§<!b§;
                                    addr55:
                                    while(!_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop5;
                                       }
                                       if(!_loc1_)
                                       {
                                          continue loop8;
                                       }
                                       §§goto(addr147);
                                    }
                                    continue loop7;
                                 }
                              }
                              continue loop1;
                              if(_loc2_ || _loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       return;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr166);
      }
      
      protected function §<!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'!N§(true);
         }
         do
         {
            this.§'I§();
         }
         while(!_loc2_);
         
      }
      
      protected function §'!N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            (§`!v§.getItemByName("Button_Resume") as §9"8§).setEnabled(param1);
            while(true)
            {
               (§`!v§.getItemByName("Button_Replay") as §9"8§).setEnabled(param1);
            }
            addr109:
         }
         loop1:
         while(true)
         {
            (§`!v§.getItemByName("Button_Menu") as §9"8§).setEnabled(param1);
            loop2:
            do
            {
               (§`!v§.getItemByName("Button_Help") as §9"8§).setEnabled(param1);
               for(; !_loc3_; (§`!v§.getItemByName("Button_Sound") as §9"8§).setEnabled(param1),if(_loc2_ || param1)
               {
                  continue loop2;
               })
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr109);
               }
               continue loop1;
            }
            while(!(_loc2_ || _loc2_));
            
            return;
         }
      }
      
      protected function §!!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            (§`!v§.getItemByName("Button_Resume") as §9"8§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§`!v§.getItemByName("Button_Replay") as §9"8§).setComponentVisualState(param1);
               loop1:
               while(true)
               {
                  (§`!v§.getItemByName("Button_Menu") as §9"8§).setComponentVisualState(param1);
                  while(true)
                  {
                     (§`!v§.getItemByName("Button_Help") as §9"8§).setComponentVisualState(param1);
                     while(!(_loc3_ && _loc2_))
                     {
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              (§`!v§.getItemByName("Button_Sound") as §9"8§).setComponentVisualState(param1);
                              if(!_loc3_)
                              {
                                 return;
                                 addr38:
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      protected function §[!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'I§();
            loop0:
            while(true)
            {
               this.§0H§ = §7I§.§[E§.§]g§(§7I§.§[E§.§ ";§(§`!v§.getItemByName("Container_PauseMenu") as §6W§,{"x":§0"1§},null,0.25),§7I§.§[E§.§ ";§((§`!v§.getItemByName("MovieClip_DarkBG") as §@u§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               while(true)
               {
                  §§push(this.§0H§);
                  while(true)
                  {
                     §§pop().onComplete = this.§>!L§;
                     §§push(this.§0H§);
                     addr62:
                     continue loop1;
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop().play();
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              return;
                              addr38:
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      protected function §>!L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            mNextState = this.getPlayState();
         }
         do
         {
            this.§'I§();
         }
         while(_loc2_);
         
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
         if(!(_loc3_ && param1))
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() == §'B§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(mNextState.length > 0)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           return §'B§.STATE_STATUS_COMPLETED;
                        }
                        addr79:
                        return _loc2_;
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  return §'B§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr79);
         }
         §§goto(addr81);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
            while(true)
            {
               this.§'I§();
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§!!§(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!(_loc2_ && _loc2_))
            {
               if(!(_loc2_ && _loc2_))
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
         if(_loc1_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§%Q§ = null;
         var _loc7_:* = param2;
         if(_loc9_)
         {
            if("HELP" === _loc7_)
            {
               if(_loc9_ || param2)
               {
                  §§push(0);
                  if(!_loc9_)
                  {
                     addr293:
                  }
               }
               else
               {
                  addr304:
                  §§push(2);
                  if(_loc10_)
                  {
                     addr368:
                  }
               }
            }
            else if("RESTART_LEVEL" === _loc7_)
            {
               if(!(_loc10_ && param1))
               {
                  §§push(1);
                  if(_loc9_ || this)
                  {
                     §§goto(addr293);
                  }
               }
               else
               {
                  addr365:
                  §§push(6);
                  if(!_loc10_)
                  {
                     §§goto(addr368);
                  }
               }
               §§goto(addr390);
            }
            else if("RESUME_LEVEL" === _loc7_)
            {
               if(_loc9_ || this)
               {
                  §§goto(addr304);
               }
               else
               {
                  addr337:
                  §§push(4);
                  if(_loc9_)
                  {
                     addr340:
                  }
                  else
                  {
                     addr354:
                  }
               }
            }
            else if("END_LEVEL" === _loc7_)
            {
               if(_loc9_ || this)
               {
                  §§push(3);
                  if(_loc9_ || this)
                  {
                  }
                  §§goto(addr390);
               }
               else
               {
                  §§goto(addr337);
               }
            }
            else if("MENU" === _loc7_)
            {
               if(!(_loc10_ && param3))
               {
                  §§goto(addr337);
               }
               else
               {
                  §§goto(addr365);
               }
            }
            else if("TOGGLE_SOUNDS" === _loc7_)
            {
               if(_loc9_)
               {
                  §§push(5);
                  if(_loc9_ || param3)
                  {
                     §§goto(addr354);
                  }
                  §§goto(addr390);
               }
               else
               {
                  §§goto(addr365);
               }
            }
            else
            {
               if("TOGGLE_PARTICLES" === _loc7_)
               {
                  if(_loc9_ || param3)
                  {
                     §§goto(addr365);
                  }
               }
               else if("FULLSCREEN_BUTTON" !== _loc7_)
               {
                  addr390:
                  loop0:
                  while(true)
                  {
                     loop6:
                     switch(§§pop())
                     {
                        case 0:
                           this.§[!,§();
                           if(!_loc9_)
                           {
                              break;
                           }
                           continue;
                        case 1:
                           mNextState = this.§"!0§();
                           §`!;§.§%P§();
                           addr246:
                           break loop0;
                           addr253:
                           addr246:
                        case 2:
                           this.§[!,§();
                           break loop0;
                           addr242:
                        case 3:
                           break loop0;
                        case 4:
                           §0"#§.§4"#§();
                           if(_loc9_)
                           {
                              mNextState = this.§>!9§();
                              break loop0;
                              addr226:
                           }
                           break loop0;
                        case 5:
                           addr212:
                           §§push(AngryBirdsFP11.getSoundsEnabled());
                           if(!(_loc10_ && param1))
                           {
                              §§push(!§§pop());
                           }
                           _loc4_ = §§pop();
                           addr213:
                           if(!(_loc10_ && this))
                           {
                              AngryBirdsFP11.setSoundsEnabled(_loc4_);
                              break;
                           }
                           §§goto(addr242);
                           break;
                        case 6:
                           §§push(§'_§.§&R§());
                           if(_loc9_ || this)
                           {
                              §§push(!§§pop());
                           }
                           if(_loc9_ || param3)
                           {
                              _loc5_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §'_§.§?R§(_loc5_);
                                 addr142:
                                 while(_loc10_)
                                 {
                                    continue loop5;
                                 }
                                 if(_loc9_)
                                 {
                                    addr107:
                                    §`!v§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                    if(!(_loc10_ && param3))
                                    {
                                       if(!_loc10_)
                                       {
                                          if(!(_loc10_ && param3))
                                          {
                                             if(_loc9_ || param2)
                                             {
                                                break loop0;
                                             }
                                             §§goto(addr253);
                                          }
                                          else
                                          {
                                             §§goto(addr226);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr213);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!(_loc10_ && param2))
                                       {
                                          break loop0;
                                       }
                                       break loop6;
                                    }
                                 }
                                 §§goto(addr246);
                              }
                           }
                           else
                           {
                              §§goto(addr212);
                           }
                           §§goto(addr212);
                        case 7:
                           AngryBirdsFP11.§@"7§.§>!5§();
                           if(_loc9_ || this)
                           {
                              if(!(_loc10_ && param1))
                              {
                                 if(!(_loc10_ && param1))
                                 {
                                    if(true)
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr107);
                                 }
                                 else
                                 {
                                    §§goto(addr142);
                                 }
                              }
                              §§goto(addr107);
                           }
                     }
                  }
                  continue loop1;
                  return;
                  §§push(8);
               }
               §§goto(addr390);
               if(_loc9_)
               {
                  §§goto(addr385);
               }
            }
            §§goto(addr390);
         }
         §§goto(addr304);
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§%!Q§;
      }
      
      protected function §"!0§() : String
      {
         return §`!;§.§%!Q§;
      }
      
      protected function §>!9§() : String
      {
         return §1!i§.§%!Q§;
      }
   }
}
