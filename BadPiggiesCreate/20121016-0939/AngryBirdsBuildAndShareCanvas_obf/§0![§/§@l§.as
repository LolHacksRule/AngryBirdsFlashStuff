package §0![§
{
   import § "'§.§3@§;
   import § "@§.§%!3§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §2H§.§,J§;
   import §5"-§.§5y§;
   import §6p§.§?%§;
   import §="6§.§^"8§;
   import §@!G§.§5!!§;
   import §`!Y§.§&!H§;
   
   public class §@l§ extends §5y§
   {
      
      private static const §4",§:Number = -250;
      
      public static const §'=§:String = "PauseStateBS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4",§ = -250;
         }
         do
         {
            §'=§ = "PauseStateBS";
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private var § set§:§3@§ = null;
      
      private var §^-§:§,J§;
      
      public function §@l§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.§'=§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            do
            {
               §?E§ = new §'s§(this);
               do
               {
                  §?E§.init(§`7§.§>"?§.Views.View_LevelPauseBS[0]);
               }
               while(_loc1_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
            while(true)
            {
               §=!X§.§!'§.background.§#!'§();
               loop1:
               while(!(_loc2_ && this))
               {
                  while(true)
                  {
                     this.§`s§();
                     if(_loc1_)
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
      
      private function §`s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§^"8§.§2!b§ != null)
            {
               while(true)
               {
                  (§?E§.getItemByName("TextField_LevelName") as §`!<§).§&!w§.text = §^"8§.§2!b§;
                  addr188:
                  while(true)
                  {
                  }
               }
               addr169:
            }
            while(true)
            {
               (§?E§.getItemByName("Container_PauseMenu") as §`!T§).x = §4",§;
               loop3:
               while(true)
               {
                  if(_loc2_)
                  {
                     this.§9T§(false);
                     loop4:
                     while(true)
                     {
                        §=!X§.pause();
                        addr111:
                        if(_loc2_ || this)
                        {
                           §§push(this.§ set§);
                           loop12:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 addr47:
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§pop().addEventListener(§&!H§.COMPLETE,this.§""!§);
                                    while(true)
                                    {
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          break loop12;
                                       }
                                       continue loop12;
                                       addr29:
                                       §§pop().play();
                                       if(!(_loc1_ && this))
                                       {
                                          if(!_loc1_)
                                          {
                                             if(_loc2_)
                                             {
                                                return;
                                             }
                                             break loop3;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr111);
                                             }
                                             else
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(this.§ set§);
                                                   addr122:
                                                   while(true)
                                                   {
                                                      if(§§pop() != null)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break loop12;
                                                         }
                                                         if(!_loc1_)
                                                         {
                                                            §§push(this.§ set§);
                                                            while(true)
                                                            {
                                                               §§pop().stop();
                                                               break loop12;
                                                            }
                                                            addr130:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §?%§.§",§.isPaused = true;
                                                               continue loop6;
                                                            }
                                                            addr148:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§ set§ = §5!!§.§3">§(§5!!§.§3!b§(§?E§.getItemByName("Container_PauseMenu") as §`!T§,{"x":0},null,0.25),§5!!§.§3!b§((§?E§.getItemByName("MovieClip_DarkBG") as §%+§).mClip,{"alpha":1},{"alpha":0},0.25));
                                                            continue loop11;
                                                         }
                                                         addr67:
                                                      }
                                                      §§goto(addr47);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr130);
                           }
                           continue loop3;
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr169);
                  }
               }
               §§goto(addr188);
            }
         }
         §§goto(addr148);
      }
      
      private function §""!§(param1:§&!H§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ set§.removeEventListener(§&!H§.COMPLETE,this.§""!§);
         }
         do
         {
            this.§9T§(true);
         }
         while(!(_loc3_ || param1));
         
      }
      
      private function §9T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§?E§.getItemByName("Button_Resume") as §="#§).setEnabled(param1);
         }
         while(true)
         {
            (§?E§.getItemByName("Button_Replay") as §="#§).setEnabled(param1);
            while(!_loc3_)
            {
               (§?E§.getItemByName("Button_Help") as §="#§).setEnabled(param1);
               while(!(_loc3_ && this))
               {
                  (§?E§.getItemByName("Button_Sound") as §="#§).setEnabled(param1);
                  if(!_loc3_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function §]!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§ set§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§ set§);
                     addr130:
                     while(true)
                     {
                        §§pop().stop();
                        addr131:
                        while(true)
                        {
                        }
                     }
                  }
                  addr128:
               }
               loop4:
               while(true)
               {
                  this.§ set§ = §5!!§.§3">§(§5!!§.§3!b§(§?E§.getItemByName("Container_PauseMenu") as §`!T§,{"x":§4",§},null,0.25),§5!!§.§3!b§((§?E§.getItemByName("MovieClip_DarkBG") as §%+§).mClip,{"alpha":0},{"alpha":1},0.25));
                  loop5:
                  while(_loc1_)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        while(true)
                        {
                           §§push(this.§ set§);
                           loop7:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 §§pop().addEventListener(§&!H§.COMPLETE,this.§,!o§);
                                 while(!_loc2_)
                                 {
                                    continue loop7;
                                    §§pop().play();
                                    if(_loc1_ || _loc1_)
                                    {
                                       return;
                                    }
                                 }
                                 continue loop5;
                              }
                              continue loop0;
                           }
                           continue loop4;
                        }
                        addr123:
                     }
                     else
                     {
                        §§goto(addr128);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr131);
               }
            }
         }
         §§goto(addr123);
      }
      
      protected function §,!o§(param1:§&!H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ set§.removeEventListener(§&!H§.COMPLETE,this.§,!o§);
         }
         do
         {
            mNextState = this.getPlayState();
         }
         while(!_loc2_);
         
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
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() == §5y§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc3_)
                        {
                           return §5y§.STATE_STATUS_COMPLETED;
                        }
                        addr89:
                        return _loc2_;
                     }
                     if(!(_loc3_ && param1))
                     {
                        break;
                     }
                  }
                  return §5y§.STATE_STATUS_RUNNING;
               }
            }
         }
         §§goto(addr89);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
            while(true)
            {
               §?%§.§",§.isPaused = false;
               addr118:
               while(true)
               {
                  (§?E§.getItemByName("Button_Resume") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               addr85:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               (§?E§.getItemByName("Button_Help") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               do
               {
                  (§?E§.getItemByName("Button_Sound") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               while(!(_loc1_ || _loc2_));
               
               addr92:
               if(!_loc2_)
               {
                  addr46:
                  if(!(_loc1_ || _loc2_))
                  {
                     while(true)
                     {
                        (§?E§.getItemByName("Button_Replay") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        addr83:
                        while(!_loc2_)
                        {
                           §§goto(addr85);
                           §§goto(addr92);
                        }
                        §§goto(addr118);
                        §§goto(addr46);
                     }
                     addr112:
                  }
                  return;
               }
               §§goto(addr83);
            }
         }
         §§goto(addr112);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(!(_loc7_ && param1))
         {
            if("HELP" === _loc6_)
            {
               if(_loc8_)
               {
                  §§push(0);
                  if(_loc7_)
                  {
                     addr311:
                  }
               }
               else
               {
                  addr331:
                  §§push(4);
                  if(!(_loc7_ && param3))
                  {
                     addr339:
                  }
                  else
                  {
                     addr394:
                  }
               }
            }
            else if("HELP_CLOSE" === _loc6_)
            {
               if(!_loc7_)
               {
                  §§push(1);
                  if(!_loc8_)
                  {
                  }
               }
               else
               {
                  addr322:
                  §§push(3);
                  if(!_loc8_)
                  {
                     §§goto(addr339);
                  }
               }
            }
            else if("RESTART_LEVEL" === _loc6_)
            {
               if(_loc8_ || param1)
               {
                  §§push(2);
                  if(!_loc7_)
                  {
                     §§goto(addr311);
                  }
                  else
                  {
                     §§goto(addr394);
                  }
               }
               else
               {
                  addr350:
                  §§push(5);
                  if(_loc7_ && this)
                  {
                  }
               }
            }
            else if("RESUME_LEVEL" === _loc6_)
            {
               if(_loc8_ || this)
               {
                  §§goto(addr322);
               }
               else
               {
                  addr369:
                  §§push(6);
                  if(!(_loc8_ || param2))
                  {
                     §§goto(addr394);
                  }
               }
            }
            else if("TOGGLE_SOUNDS" === _loc6_)
            {
               if(!_loc7_)
               {
                  §§goto(addr331);
               }
               else
               {
                  §§goto(addr369);
               }
            }
            else
            {
               if("TOGGLE_PARTICLES" === _loc6_)
               {
                  if(_loc8_ || param3)
                  {
                     §§goto(addr350);
                  }
               }
               else if("FULLSCREEN_BUTTON" === _loc6_)
               {
                  if(!(_loc7_ && param2))
                  {
                     §§goto(addr369);
                  }
               }
               else if("MENU" !== _loc6_)
               {
                  addr399:
                  loop5:
                  switch(§§pop())
                  {
                     case 0:
                        this.§^-§ = new §,J§(§?E§,§`7§.§>"?§.Views.PopupView_PlayHelp[0]);
                        addr252:
                        this.§^-§.open();
                        break;
                        addr253:
                        addr267:
                     case 1:
                        §§push(this.§^-§);
                        if(_loc8_ || param3)
                        {
                           §§pop().close();
                           §=!X§.pause();
                           break;
                           addr234:
                           addr248:
                        }
                        else
                        {
                           §§goto(addr252);
                        }
                        break;
                     case 2:
                        mNextState = §%!3§.§'=§;
                        §%!3§.§4[§(this.getPlayState());
                        break;
                        addr230:
                        addr222:
                     case 3:
                        this.§]!"§();
                        addr214:
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§goto(addr234);
                        break;
                     case 4:
                        addr183:
                        _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
                        addr182:
                        if(_loc8_ || param1)
                        {
                           if(_loc8_ || param2)
                           {
                              AngryBirdsFP11.setSoundsEnabled(_loc4_);
                              addr158:
                              if(_loc4_)
                              {
                                 addr159:
                                 if(_loc8_)
                                 {
                                    (§?E§.getItemByName("Button_Sound") as §="#§).setComponentState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    addr169:
                                    if(_loc8_)
                                    {
                                       addr121:
                                       break;
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr222);
                              }
                              else
                              {
                                 (§?E§.getItemByName("Button_Sound") as §="#§).setComponentState(§9!!§.§,!0§);
                                 addr155:
                              }
                              §§goto(addr121);
                              addr176:
                           }
                           else
                           {
                              §§goto(addr214);
                           }
                        }
                        break;
                     case 5:
                        §§push(§=!X§.§5$§());
                        if(_loc8_)
                        {
                           if(!(_loc7_ && param1))
                           {
                              if(!_loc7_)
                              {
                                 addr138:
                                 §§push(!§§pop());
                                 if(_loc8_)
                                 {
                                    _loc5_ = §§pop();
                                    addr141:
                                    if(!_loc7_)
                                    {
                                       §=!X§.§]D§(_loc5_);
                                       loop0:
                                       while(true)
                                       {
                                          §?E§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                          addr102:
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                break loop0;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       if(!(_loc7_ && param1))
                                       {
                                          if(_loc8_)
                                          {
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             §§goto(addr253);
                                          }
                                          else
                                          {
                                             §§goto(addr159);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr155);
                                       }
                                       §§goto(addr121);
                                    }
                                    else
                                    {
                                       §§goto(addr267);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr158);
                                 }
                                 §§goto(addr159);
                              }
                              else
                              {
                                 §§goto(addr182);
                              }
                           }
                           §§goto(addr183);
                        }
                        §§goto(addr138);
                     case 6:
                        §4m§.doJsCall("onFullscreenToggle");
                        addr92:
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§goto(addr141);
                        break;
                     case 7:
                        §4m§.doJsCall("onLevelMenuOpened");
                        loop1:
                        for(; _loc8_ || param2; while(true)
                        {
                           if(_loc7_ && param2)
                           {
                              continue loop1;
                           }
                           if(_loc8_)
                           {
                              §5!U§.§9&§();
                              if(_loc8_ || param3)
                              {
                                 if(_loc7_ && param2)
                                 {
                                    continue;
                                 }
                                 if(!_loc7_)
                                 {
                                    if(_loc8_ || param2)
                                    {
                                       if(true)
                                       {
                                          break loop5;
                                       }
                                       §§goto(addr50);
                                    }
                                    else
                                    {
                                       §§goto(addr248);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr176);
                                 }
                              }
                              break loop5;
                           }
                           §§goto(addr92);
                           §§goto(addr155);
                        },break loop5)
                        {
                           if(!(_loc7_ && this))
                           {
                              while(true)
                              {
                                 mNextState = §^! §.§'=§;
                                 continue loop1;
                              }
                              addr50:
                           }
                           else
                           {
                              §§goto(addr169);
                           }
                        }
                        §§goto(addr102);
                  }
                  return;
                  §§push(8);
               }
               §§goto(addr399);
               if(!_loc7_)
               {
                  §§goto(addr394);
               }
            }
            §§goto(addr399);
         }
         §§goto(addr350);
      }
   }
}
