package §0![§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5!V§.§>n§;
   import §5"-§.§5y§;
   
   public class §4g§ extends §5y§
   {
      
      public static const §4",§:Number = -250;
      
      public static const §'=§:String = "PauseState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §4",§ = -250;
         }
         do
         {
            §'=§ = "PauseState";
         }
         while(!_loc1_);
         
      }
      
      protected var § set§:§3^§ = null;
      
      public function §4g§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
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
            while(true)
            {
               §?E§ = new §'s§(this);
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §?E§.init(§`7§.§>"?§.Views.View_LevelPause[0]);
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            while(true)
            {
               this.§`s§();
               while(_loc1_ || this)
               {
                  §=!X§.§!'§.background.§#!'§();
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     while(true)
                     {
                        this.§<"0§();
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      protected function §<"0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?E§.getItemByName("Button_Help").setVisibility(false);
            while(true)
            {
               §?E§.getItemByName("Button_Sound").setVisibility(false);
               while(!(_loc1_ && this))
               {
                  §?E§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr47:
               }
            }
         }
         §§goto(addr47);
      }
      
      private function §[!9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§ set§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§ set§);
                     addr74:
                     while(true)
                     {
                        §§pop().stop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr75);
      }
      
      protected function §`s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§3!w§.§%n§ != null)
            {
               loop0:
               while(true)
               {
                  (§?E§.getItemByName("TextField_LevelName") as §`!<§).§&!w§.text = §3!w§.§%n§;
                  addr171:
                  while(true)
                  {
                     addr126:
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     §?E§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
                     loop6:
                     for(; _loc2_ || _loc2_; loop8:
                     while(true)
                     {
                        if(_loc1_ && _loc1_)
                        {
                           continue loop6;
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§push(this.§ set§);
                        loop9:
                        while(true)
                        {
                           §§pop().onComplete = this.§""!§;
                           addr41:
                           while(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop9;
                              }
                              continue loop0;
                           }
                           continue loop8;
                        }
                     },while(true)
                     {
                        this.§9T§(false);
                        addr138:
                        while(true)
                        {
                           §=!X§.pause();
                           break loop6;
                        }
                     })
                     {
                        this.§[!9§();
                        while(true)
                        {
                           this.§ set§ = §7!E§.§2=§.§7#§(§7!E§.§2=§.§<!C§(§?E§.getItemByName("Container_PauseMenu") as §`!T§,{"x":0},null,0.25),§7!E§.§2=§.§<!C§((§?E§.getItemByName("MovieClip_DarkBG") as §%+§).mClip,{"alpha":1},{"alpha":0},0.25));
                           continue loop6;
                        }
                     }
                     while(!_loc1_)
                     {
                        §§goto(addr126);
                        §§goto(addr113);
                     }
                     addr113:
                     §§goto(addr138);
                  }
               }
            }
            while(true)
            {
               (§?E§.getItemByName("Container_PauseMenu") as §`!T§).x = §4",§;
               §§goto(addr171);
            }
         }
         §§goto(addr147);
      }
      
      protected function §""!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9T§(true);
         }
         do
         {
            this.§[!9§();
         }
         while(_loc2_);
         
      }
      
      protected function §9T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            (§?E§.getItemByName("Button_Resume") as §="#§).setEnabled(param1);
         }
         loop0:
         while(true)
         {
            (§?E§.getItemByName("Button_Replay") as §="#§).setEnabled(param1);
            loop1:
            while(true)
            {
               (§?E§.getItemByName("Button_Menu") as §="#§).setEnabled(param1);
               while(true)
               {
                  (§?E§.getItemByName("Button_Help") as §="#§).setEnabled(param1);
                  while(!(_loc3_ && param1))
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           (§?E§.getItemByName("Button_Sound") as §="#§).setEnabled(param1);
                           if(!_loc3_)
                           {
                              return;
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
      
      protected function §!"2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§?E§.getItemByName("Button_Resume") as §="#§).setComponentVisualState(param1);
         }
         loop0:
         do
         {
            (§?E§.getItemByName("Button_Replay") as §="#§).setComponentVisualState(param1);
            loop1:
            while(true)
            {
               (§?E§.getItemByName("Button_Menu") as §="#§).setComponentVisualState(param1);
               loop2:
               do
               {
                  (§?E§.getItemByName("Button_Help") as §="#§).setComponentVisualState(param1);
                  while(_loc3_)
                  {
                     (§?E§.getItemByName("Button_Sound") as §="#§).setComponentVisualState(param1);
                     if(!_loc2_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc2_);
               
               continue loop0;
            }
         }
         while(_loc2_ && param1);
         
      }
      
      protected function §]!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§[!9§();
         }
         do
         {
            this.§ set§ = §7!E§.§2=§.§7#§(§7!E§.§2=§.§<!C§(§?E§.getItemByName("Container_PauseMenu") as §`!T§,{"x":§4",§},null,0.25),§7!E§.§2=§.§<!C§((§?E§.getItemByName("MovieClip_DarkBG") as §%+§).mClip,{"alpha":0},{"alpha":1},0.25));
            loop1:
            do
            {
               §§push(this.§ set§);
               while(true)
               {
                  §§pop().onComplete = this.§,!o§;
                  while(true)
                  {
                     §§push(this.§ set§);
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§pop().play();
                     if(_loc1_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && _loc1_);
         
      }
      
      protected function §,!o§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            mNextState = this.getPlayState();
         }
         do
         {
            this.§[!9§();
         }
         while(_loc2_ && this);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() == §5y§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        return §5y§.STATE_STATUS_COMPLETED;
                     }
                     if(!(_loc3_ && param1))
                     {
                        if(!_loc3_)
                        {
                           addr72:
                           break;
                        }
                        addr89:
                        return _loc2_;
                     }
                  }
                  return §5y§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr89);
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
            do
            {
               this.§[!9§();
               do
               {
                  this.§!"2§(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc2_);
            
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§>n§ = null;
         var _loc7_:* = param2;
         if(!_loc10_)
         {
            if("HELP" === _loc7_)
            {
               if(_loc9_)
               {
                  §§push(0);
                  if(_loc10_)
                  {
                     addr281:
                  }
               }
               else
               {
                  addr287:
                  §§push(4);
                  if(!_loc9_)
                  {
                     addr345:
                  }
               }
            }
            else if("RESTART_LEVEL" === _loc7_)
            {
               if(_loc9_)
               {
                  §§push(1);
                  if(_loc10_)
                  {
                     addr309:
                  }
               }
               else
               {
                  §§goto(addr287);
               }
            }
            else if("RESUME_LEVEL" === _loc7_)
            {
               if(_loc9_)
               {
                  §§push(2);
                  if(_loc9_ || this)
                  {
                  }
               }
               else
               {
                  addr273:
                  §§push(3);
                  if(_loc9_ || param3)
                  {
                     §§goto(addr281);
                  }
                  else
                  {
                     §§goto(addr309);
                  }
               }
            }
            else if("END_LEVEL" === _loc7_)
            {
               if(!(_loc10_ && param3))
               {
                  §§goto(addr273);
               }
               else
               {
                  addr320:
                  §§push(6);
                  if(_loc10_ && param1)
                  {
                  }
               }
            }
            else if("MENU" === _loc7_)
            {
               if(_loc9_)
               {
                  §§goto(addr287);
               }
               else
               {
                  addr301:
                  §§push(5);
                  if(!(_loc10_ && param3))
                  {
                     §§goto(addr309);
                  }
               }
            }
            else if("TOGGLE_SOUNDS" === _loc7_)
            {
               if(_loc9_ || this)
               {
                  §§goto(addr301);
               }
               else
               {
                  §§goto(addr320);
               }
            }
            else
            {
               if("TOGGLE_PARTICLES" === _loc7_)
               {
                  if(_loc9_ || param3)
                  {
                     §§goto(addr320);
                  }
                  else
                  {
                     addr332:
                     §§push(7);
                     if(!_loc10_)
                     {
                        §§goto(addr345);
                     }
                  }
               }
               else if("FULLSCREEN_BUTTON" === _loc7_)
               {
                  §§goto(addr332);
               }
               else
               {
                  §§push(8);
               }
               §§goto(addr332);
            }
            loop0:
            while(true)
            {
               switch(§§pop())
               {
                  case 0:
                     this.§]!"§();
                     if(_loc9_ || this)
                     {
                        §§push(0);
                        if(_loc10_)
                        {
                           continue;
                        }
                        _loc7_ = §§pop();
                        if(!(_loc10_ && this))
                        {
                           for each(_loc6_ in §=!X§.§!'§.slingshot.mBirds)
                           {
                              if(_loc9_)
                              {
                                 AngryBirdsFP11.§>" §.§>"1§(_loc6_.name,false);
                              }
                           }
                        }
                        if(_loc9_ || param1)
                        {
                           break loop0;
                        }
                        loop7:
                        while(true)
                        {
                           §?E§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                           if(_loc9_)
                           {
                              addr151:
                              if(!(_loc10_ && param1))
                              {
                                 break loop0;
                              }
                              addr163:
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    if(_loc9_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 else
                                 {
                                    addr196:
                                 }
                                 continue loop7;
                                 §§goto(addr151);
                              }
                           }
                           break loop0;
                        }
                     }
                     else
                     {
                        mNextState = this.§1"&§();
                        addr206:
                     }
                     §§goto(addr196);
                  case 1:
                     mNextState = this.§]!W§();
                     §0!v§.§4[§();
                     addr216:
                     break loop0;
                     addr216:
                     addr223:
                  case 2:
                     this.§]!"§();
                     break;
                  case 3:
                     break loop0;
                  case 4:
                     §5!U§.§9&§();
                     §§goto(addr206);
                  case 5:
                     addr189:
                     §§push(AngryBirdsFP11.getSoundsEnabled());
                     if(!(_loc10_ && param3))
                     {
                        §§push(!§§pop());
                     }
                     _loc4_ = §§pop();
                     AngryBirdsFP11.setSoundsEnabled(_loc4_);
                     §§goto(addr163);
                     addr190:
                  case 6:
                     §§push(§=!X§.§5$§());
                     if(!_loc10_)
                     {
                        if(_loc9_)
                        {
                           addr133:
                           _loc5_ = !§§pop();
                           while(true)
                           {
                              if(_loc9_ || param1)
                              {
                                 §=!X§.§]D§(_loc5_);
                                 loop3:
                                 while(true)
                                 {
                                    addr99:
                                    while(true)
                                    {
                                       §?E§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                       continue loop3;
                                    }
                                 }
                                 if(!_loc9_)
                                 {
                                    continue;
                                 }
                                 if(_loc9_ || this)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr216);
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr189);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr133);
                  case 7:
                     AngryBirdsFP11.§%d§.§9+§();
                     if(!_loc10_)
                     {
                        if(!_loc10_)
                        {
                           if(!(_loc10_ && param2))
                           {
                              if(!_loc10_)
                              {
                                 if(true)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr99);
                              }
                              else
                              {
                                 §§goto(addr223);
                              }
                           }
                           else
                           {
                              §§goto(addr206);
                           }
                           §§goto(addr196);
                        }
                        §§goto(addr106);
                     }
               }
               break;
            }
            return;
         }
         §§goto(addr332);
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§'=§;
      }
      
      protected function §]!W§() : String
      {
         return §0!v§.§'=§;
      }
      
      protected function §1"&§() : String
      {
         return §7B§.§'=§;
      }
   }
}
