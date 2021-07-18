package §;u§
{
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §>0§.§3"K§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §>!w§ extends §+d§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §>!V§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            STATE_NAME = "LevelEndEagleState";
            do
            {
               §>!V§ = "ScoreLoopCountChannel";
            }
            while(_loc2_);
            
         }
      }
      
      private var §7!'§:§6!K§;
      
      private var §;!@§:§3"K§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §^N§:Number;
      
      protected var §!"1§:int;
      
      public function §>!w§(param1:Boolean = false, param2:String = "LevelEndEagleState")
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            loop0:
            do
            {
               §2"@§ = new §`_§(this);
               while(true)
               {
                  §2"@§.init(§ "<§.§%I§.Views.View_LevelEndEagle[0]);
                  while(_loc1_ || _loc1_)
                  {
                     this.§^N§ = (§2"@§.getItemByName("MovieClip_EagleMeterFill") as §^n§).width;
                     do
                     {
                        §@"M§.§set §(§>!V§,1,1);
                     }
                     while(_loc2_ && _loc2_);
                     
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.activate();
            while(true)
            {
               this.§;!@§ = new §3"K§(0,0,0,0);
            }
            addr95:
         }
         loop1:
         while(true)
         {
            §2"@§.movieClip.addChildAt(this.§;!@§,§2"@§.movieClip.numChildren - 1);
            loop2:
            while(!_loc4_)
            {
               §2"@§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
               loop3:
               while(true)
               {
                  §2"@§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        break;
                        addr42:
                     }
                     while(true)
                     {
                        §@"M§.§3"C§("LevelCompletedTheme1");
                        continue loop1;
                     }
                     addr31:
                     if(_loc4_ && _loc1_)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        continue loop3;
                     }
                     if(false)
                     {
                        §§goto(addr42);
                     }
                     else
                     {
                        §§push(§?l§.§5-§.getEagleScore());
                        if(!(_loc4_ && this))
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc1_:* = §§pop();
                        if(_loc3_)
                        {
                           this.§!"1§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§ T§);
                        }
                        var _loc2_:* = _loc1_ > this.§!"1§;
                        if(_loc3_ || this)
                        {
                           if(_loc2_)
                           {
                              addr252:
                              this.saveNewHighScore(_loc1_);
                           }
                           (§2"@§.getItemByName("TextField_EaglePercentage") as §4"9§).§-" §.text = _loc1_ + "%";
                           §@"M§.§3"C§("Hiscore_Count",§>!V§,100);
                           §§push(this);
                           §§push(§0W§.§&"5§);
                           §§push(this);
                           §§push({"mEagleScoreCounter":_loc1_});
                           §§push({"mEagleScoreCounter":0});
                           §§push(_loc1_ / 100);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() * 4);
                           }
                           §§pop().§7!'§ = §§pop().§]!r§(§§pop(),§§pop(),§§pop(),§§pop());
                           addr237:
                           if(!(_loc4_ && this))
                           {
                              addr168:
                              this.§7!'§.onComplete = this.onCountComplete;
                              addr171:
                              if(!_loc4_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(this.§7!'§);
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          §§pop().play();
                                          if(!(_loc4_ && this))
                                          {
                                             if(!_loc3_)
                                             {
                                                §§goto(addr237);
                                             }
                                             return;
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr168);
                                    }
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr237);
                           }
                           addr249:
                           §§goto(addr249);
                        }
                        §§goto(addr252);
                     }
                  }
                  continue loop2;
               }
            }
            §§goto(addr95);
         }
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            AngryBirdsFP11.sUserProgress.§3!Z§(LevelManager.§ T§,param1);
         }
      }
      
      protected function onCountComplete() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(_loc2_)
         {
            §@"M§.§]!n§(§>!V§);
            if(_loc2_ || this)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(!_loc3_)
                  {
                     §@"M§.§3"C§("Hiscore_Badge",§>!V§);
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     addr51:
                     if(_loc2_ || this)
                     {
                        (§2"@§.getItemByName("MovieClip_EagleMeterEffect") as §^n§).setVisibility(true);
                        if(_loc2_)
                        {
                           (§2"@§.getItemByName("MovieClip_EagleMeterFill") as §^n§).mClip.filters = [_loc1_];
                        }
                     }
                  }
                  §§goto(addr51);
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(int(this.mEagleScoreCounter) <= this.§!"1§)
                     {
                        (§2"@§.getItemByName("TextField_EaglePercentage") as §4"9§).§-" §.text = int(this.§!"1§) + "%";
                        while(_loc5_)
                        {
                           if(_loc4_)
                           {
                              return _loc2_;
                           }
                           addr150:
                           (§2"@§.getItemByName("TextField_EaglePercentageEffects") as §4"9§).§-" §.text = int(this.§!"1§) + "%";
                           if(!_loc4_)
                           {
                              if(_loc5_)
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(false)
                                    {
                                       addr65:
                                    }
                                    var _loc3_:Rectangle = new Rectangle(0,0,this.§^N§ * (this.mEagleScoreCounter / 100),(§2"@§.getItemByName("MovieClip_EagleMeterFill") as §^n§).height);
                                    if(_loc5_ || _loc3_)
                                    {
                                       (§2"@§.getItemByName("MovieClip_EagleMeterFill") as §^n§).mClip.scrollRect = _loc3_;
                                       while(true)
                                       {
                                          (§2"@§.getItemByName("MovieClip_EagleMeterEffect") as §^n§).mClip.rotation = (§2"@§.getItemByName("MovieClip_EagleMeterEffect") as §^n§).mClip.rotation + param1 / 20;
                                       }
                                       addr256:
                                    }
                                    while(mNextState.length > 0)
                                    {
                                       if(_loc4_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §?l§.§'h§.clearLevel();
                                       if(_loc5_)
                                       {
                                          return §+d§.STATE_STATUS_COMPLETED;
                                       }
                                       §§goto(addr256);
                                    }
                                    return §+d§.STATE_STATUS_RUNNING;
                                 }
                                 addr138:
                                 addr124:
                                 (§2"@§.getItemByName("TextField_EaglePercentage") as §4"9§).§-" §.text = int(this.mEagleScoreCounter) + "%";
                                 while(true)
                                 {
                                    (§2"@§.getItemByName("TextField_EaglePercentageEffects") as §4"9§).§-" §.text = int(this.mEagleScoreCounter) + "%";
                                    break loop0;
                                 }
                              }
                              break loop0;
                           }
                        }
                        continue;
                     }
                     §§goto(addr124);
                  }
                  while(!_loc5_)
                  {
                     §§goto(addr138);
                  }
                  §§goto(addr65);
               }
            }
            §§goto(addr150);
         }
         §§goto(addr138);
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
               §§push(this.§;!@§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        if(§2"@§.movieClip.contains(this.§;!@§))
                        {
                           while(true)
                           {
                              §2"@§.movieClip.removeChild(this.§;!@§);
                              addr224:
                              while(true)
                              {
                              }
                           }
                           addr219:
                        }
                        while(true)
                        {
                           §§push(this.§;!@§);
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§pop().clean();
                           loop6:
                           for(; _loc1_; for(; _loc1_ || this; §§goto(addr158))
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 this.mEagleScoreCounter = 0;
                                 continue;
                              }
                              §§goto(addr219);
                           })
                           {
                              this.§;!@§ = null;
                              while(true)
                              {
                                 loop13:
                                 while(_loc1_ || _loc2_)
                                 {
                                    loop17:
                                    while(true)
                                    {
                                       (§2"@§.getItemByName("MovieClip_EagleMeterEffect") as §^n§).setVisibility(false);
                                       loop18:
                                       while(_loc1_)
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             if(_loc2_ && _loc2_)
                                             {
                                                continue loop2;
                                             }
                                             (§2"@§.getItemByName("Button_Menu") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                             loop19:
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      (§2"@§.getItemByName("Button_Replay") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc1_)
                                                            {
                                                               continue;
                                                            }
                                                            addr158:
                                                            while(!(_loc2_ && _loc1_))
                                                            {
                                                               §§push(this.§7!'§);
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§7!'§);
                                                                        addr152:
                                                                        addr39:
                                                                        while(true)
                                                                        {
                                                                           §§pop().stop();
                                                                           break loop20;
                                                                        }
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           break loop17;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     (§2"@§.getItemByName("MovieClip_EagleMeterFill") as §^n§).mClip.filters = [];
                                                                     break loop18;
                                                                  }
                                                                  addr117:
                                                               }
                                                               §§goto(addr152);
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop19;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§7!'§ = null;
                                                         break loop19;
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop18;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr117);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr224);
                                          }
                                       }
                                       continue loop13;
                                    }
                                    return;
                                 }
                              }
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     §@"M§.§]!n§(§>!V§);
                     §§goto(addr170);
                     §§goto(addr199);
                  }
               }
            }
         }
         §§goto(addr133);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param3))
         {
            §§push("NEXT_LEVEL");
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr128:
                        §§push(1);
                        if(_loc5_ || param3)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!(_loc6_ && param1))
                     {
                        addr122:
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           addr125:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr128);
                              }
                              §§goto(addr196);
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc5_ || this)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc6_ && param2))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_ || param3)
                                       {
                                          addr171:
                                          §§push(2);
                                          if(!(_loc5_ || param2))
                                          {
                                             addr191:
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr182:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr196:
                                          loop4:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §-!v§.§>"@§();
                                                mNextState = StateCutScene.STATE_NAME;
                                                break;
                                                addr78:
                                                addr73:
                                             case 1:
                                                §-!v§.§^!$§();
                                                while(true)
                                                {
                                                   mNextState = §-!v§.STATE_NAME;
                                                   if(_loc6_)
                                                   {
                                                      break loop4;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      break loop4;
                                                   }
                                                }
                                                break;
                                             case 2:
                                                §@"M§.§3!s§();
                                                loop1:
                                                while(true)
                                                {
                                                   addr38:
                                                   while(true)
                                                   {
                                                      mNextState = this.getMenuButtonTargetState();
                                                      continue loop1;
                                                   }
                                                }
                                                break;
                                             case 3:
                                                AngryBirdsFP11.§>m§.§=-§();
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr38);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr78);
                                                         }
                                                      }
                                                      §§goto(addr73);
                                                   }
                                                   §§goto(addr43);
                                                }
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr196);
                        }
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr196);
               }
               §§goto(addr125);
            }
            §§goto(addr122);
         }
         §§goto(addr171);
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §9"@§.STATE_NAME;
      }
   }
}
