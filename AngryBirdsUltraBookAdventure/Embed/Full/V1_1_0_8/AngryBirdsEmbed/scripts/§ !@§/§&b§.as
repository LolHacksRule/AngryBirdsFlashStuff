package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§7-§;
   import §%4§.§9O§;
   import §%4§.§`a§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §0,§.§4V§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §&b§ extends §1Q§
   {
      
      public static const §>9§:String = "LevelEndEagleState";
      
      private static const §4]§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §>9§ = "LevelEndEagleState";
            if(_loc1_ || _loc2_)
            {
               addr43:
               §4]§ = "ScoreLoopCountChannel";
            }
            return;
         }
         §§goto(addr43);
      }
      
      private var §%!?§:§ !=§;
      
      private var §+f§:§4V§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §`M§:Number;
      
      protected var §"!G§:int;
      
      public function §&b§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
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
            if(_loc1_ || this)
            {
               §]F§ = new §4!,§(this);
               if(_loc1_ || this)
               {
                  §]F§.init(§5A§.§;L§.Views.View_LevelEndEagle[0]);
                  if(!(_loc2_ && this))
                  {
                     addr74:
                     this.§`M§ = (§]F§.getItemByName("MovieClip_EagleMeterFill") as §9O§).width;
                     if(_loc1_ || _loc1_)
                     {
                        addr89:
                        §,!F§.§@o§(§4]§,1,1);
                     }
                  }
               }
               return;
            }
            §§goto(addr89);
         }
         §§goto(addr74);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.activate();
         }
         this.§+f§ = new §4V§(0,0,0,0);
         if(_loc3_ || _loc1_)
         {
            §]F§.movieClip.addChildAt(this.§+f§,§]F§.movieClip.numChildren - 1);
            if(_loc3_ || _loc3_)
            {
               addr51:
               §]F§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
               if(_loc3_)
               {
                  §]F§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
                  if(!(_loc4_ && this))
                  {
                     addr70:
                     §,!F§.§;v§("LevelCompletedTheme1");
                     if(!_loc4_)
                     {
                        addr75:
                        this.§+f§.§[!'§(0.7);
                     }
                  }
                  §§push(§=w§.controller.getEagleScore());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc1_:* = §§pop();
                  if(!(_loc4_ && _loc2_))
                  {
                     this.§"!G§ = AngryBirdsFP11.sUserProgress.§3I§(§[4§.§"!>§);
                  }
                  var _loc2_:* = _loc1_ > this.§"!G§;
                  if(_loc3_)
                  {
                     if(_loc2_)
                     {
                        if(_loc3_)
                        {
                           addr126:
                           this.§]!#§(_loc1_);
                           addr129:
                           (§]F§.getItemByName("TextField_EaglePercentage") as §`a§).§@w§.text = _loc1_ + "%";
                           §,!F§.§;v§("Hiscore_Count",§4]§,100);
                        }
                        §§push(this);
                        §§push(§@7§.§@6§);
                        §§push(this);
                        §§push({"mEagleScoreCounter":_loc1_});
                        §§push({"mEagleScoreCounter":0});
                        §§push(_loc1_ / 100);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() * 4);
                        }
                        §§pop().§%!?§ = §§pop().§3!%§(§§pop(),§§pop(),§§pop(),§§pop());
                        §§push(this.§%!?§);
                        if(_loc3_ || _loc2_)
                        {
                           §§pop().onComplete = this.§?!1§;
                           if(_loc3_ || _loc1_)
                           {
                              addr199:
                              this.§%!?§.play();
                           }
                           return;
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr126);
               }
               §§goto(addr70);
            }
            §§goto(addr75);
         }
         §§goto(addr51);
      }
      
      protected function §]!#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            AngryBirdsFP11.sUserProgress.§7z§(§[4§.§"!>§,param1);
         }
      }
      
      protected function §?!1§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(!(_loc3_ && this))
         {
            §,!F§.§@!9§(§4]§);
            if(_loc2_)
            {
               §§goto(addr41);
            }
            §§goto(addr51);
         }
         addr41:
         if(this.mEagleScoreCounter == 100)
         {
            if(!_loc3_)
            {
               §,!F§.§;v§("Hiscore_Badge",§4]§);
               _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
               addr51:
               if(!_loc3_)
               {
                  (§]F§.getItemByName("MovieClip_EagleMeterEffect") as §9O§).setVisibility(true);
                  if(_loc2_)
                  {
                     (§]F§.getItemByName("MovieClip_EagleMeterFill") as §9O§).mClip.filters = [_loc1_];
                  }
               }
            }
            §§goto(addr51);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
               {
                  addr47:
                  return _loc2_;
               }
               else
               {
                  if(int(this.mEagleScoreCounter) > this.§"!G§)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        (§]F§.getItemByName("TextField_EaglePercentage") as §`a§).§@w§.text = int(this.mEagleScoreCounter) + "%";
                        if(_loc5_)
                        {
                           (§]F§.getItemByName("TextField_EaglePercentageEffects") as §`a§).§@w§.text = int(this.mEagleScoreCounter) + "%";
                        }
                        else
                        {
                           addr123:
                           (§]F§.getItemByName("TextField_EaglePercentageEffects") as §`a§).§@w§.text = int(this.§"!G§) + "%";
                           §§goto(addr137);
                        }
                        addr137:
                        var _loc3_:Rectangle = new Rectangle(0,0,this.§`M§ * (this.mEagleScoreCounter / 100),(§]F§.getItemByName("MovieClip_EagleMeterFill") as §9O§).height);
                        if(!_loc4_)
                        {
                           (§]F§.getItemByName("MovieClip_EagleMeterFill") as §9O§).mClip.scrollRect = _loc3_;
                           if(!(_loc4_ && param1))
                           {
                              (§]F§.getItemByName("MovieClip_EagleMeterEffect") as §9O§).mClip.rotation = (§]F§.getItemByName("MovieClip_EagleMeterEffect") as §9O§).mClip.rotation + param1 / 20;
                              if(_loc4_ && param1)
                              {
                              }
                              §§goto(addr224);
                           }
                           if(mNextState.length > 0)
                           {
                              if(_loc5_ || param1)
                              {
                                 §=w§.§ o§.clearLevel();
                                 if(!_loc4_)
                                 {
                                    §§goto(addr224);
                                 }
                              }
                           }
                           return §1Q§.STATE_STATUS_RUNNING;
                        }
                        addr224:
                        return §1Q§.STATE_STATUS_COMPLETED;
                     }
                  }
                  else
                  {
                     (§]F§.getItemByName("TextField_EaglePercentage") as §`a§).§@w§.text = int(this.§"!G§) + "%";
                     if(_loc5_)
                     {
                        §§goto(addr123);
                     }
                  }
                  §§goto(addr123);
               }
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            §§push(this.§+f§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(§]F§.movieClip.contains(this.§+f§))
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §]F§.movieClip.removeChild(this.§+f§);
                     }
                     §,!F§.§@!9§(§4]§);
                     §§goto(addr62);
                  }
                  §§push(this.§+f§);
               }
               §§goto(addr62);
            }
            §§pop().clean();
            this.§+f§ = null;
            if(!(_loc1_ && this))
            {
               §§goto(addr62);
            }
            §§goto(addr132);
         }
         addr62:
         if(!(_loc1_ && _loc2_))
         {
            this.mEagleScoreCounter = 0;
         }
         §§push(this.§%!?§);
         if(_loc2_)
         {
            if(§§pop())
            {
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr99);
               }
               §§goto(addr132);
            }
            §§goto(addr105);
         }
         addr99:
         this.§%!?§.stop();
         if(_loc2_)
         {
            this.§%!?§ = null;
            addr105:
            (§]F§.getItemByName("MovieClip_EagleMeterFill") as §9O§).mClip.filters = [];
            if(!_loc1_)
            {
               (§]F§.getItemByName("MovieClip_EagleMeterEffect") as §9O§).setVisibility(false);
               addr132:
               (§]F§.getItemByName("Button_Menu") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
               (§]F§.getItemByName("Button_Replay") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            (§]F§.getItemByName("Button_NextLevel") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || this)
         {
            §§push("NEXT_LEVEL");
            if(!(_loc5_ && param3))
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || this)
                     {
                        §§push(0);
                        if(_loc5_ && this)
                        {
                        }
                     }
                     else
                     {
                        addr131:
                        §§push(1);
                        if(_loc5_ && param3)
                        {
                           addr167:
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!(_loc5_ && param3))
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && param2))
                              {
                                 §§goto(addr131);
                              }
                              §§goto(addr179);
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc6_)
                              {
                                 addr153:
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    addr156:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(2);
                                          if(_loc6_)
                                          {
                                             §§goto(addr167);
                                          }
                                          else
                                          {
                                             addr174:
                                             §§goto(addr179);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr170:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr179:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §^!K§.§+!4§();
                                                mNextState = StateCutScene.§>9§;
                                                if(_loc6_ || this)
                                                {
                                                   break;
                                                }
                                                addr62:
                                                break;
                                             case 1:
                                                §^!K§.§@!<§();
                                                if(_loc6_ || this)
                                                {
                                                   mNextState = §^!K§.§>9§;
                                                   if(!_loc6_)
                                                   {
                                                   }
                                                   break;
                                                }
                                                break;
                                             case 2:
                                                §,!F§.§?X§();
                                                mNextState = this.§6!9§();
                                                break;
                                             case 3:
                                                AngryBirdsFP11.§ y§.§-!$§();
                                                §§goto(addr62);
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr179);
                                 }
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr179);
               }
               §§goto(addr170);
            }
            §§goto(addr153);
         }
         §§goto(addr131);
      }
      
      public function §6!9§() : String
      {
         return §6!@§.§>9§;
      }
   }
}
