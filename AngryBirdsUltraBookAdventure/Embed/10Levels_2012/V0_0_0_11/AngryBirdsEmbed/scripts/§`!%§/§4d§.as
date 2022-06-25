package §`!%§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §'X§.§9[§;
   import §,K§.§-!$§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§ p§;
   import §=^§.§[!B§;
   import §=^§.§]P§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §@s§.§'!0§;
   import §@s§.§9$§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §4d§ extends §9[§
   {
      
      public static const §0!7§:String = "LevelEndEagleState";
      
      private static const §[J§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §0!7§ = "LevelEndEagleState";
            if(_loc1_)
            {
               addr28:
               §[J§ = "ScoreLoopCountChannel";
            }
            return;
         }
         §§goto(addr28);
      }
      
      private var §>q§:§ !5§;
      
      private var §>!;§:§-!$§;
      
      public var mEagleScoreCounter:Number;
      
      private var §1k§:Number;
      
      private var §+W§:int;
      
      public function §4d§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            if(_loc1_ || this)
            {
               §#!4§ = new §!!1§(this);
               if(_loc1_)
               {
                  §#!4§.init(§0!&§.§'^§.Views.View_LevelEndEagle[0]);
                  if(_loc1_ || this)
                  {
                     §§goto(addr74);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr84);
         }
         addr74:
         this.§1k§ = (§#!4§.getItemByName("MovieClip_EagleMeterFill") as §[!B§).width;
         if(!_loc2_)
         {
            addr84:
            §3!E§.§5!%§(§[J§,1,1);
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.activate();
         }
         this.§>!;§ = new §-!$§(0,0,0,0);
         if(!(_loc4_ && _loc1_))
         {
            §#!4§.movieClip.addChildAt(this.§>!;§,§#!4§.movieClip.numChildren - 1);
            if(!(_loc4_ && _loc2_))
            {
               (§#!4§.getItemByName("MovieClip_EagleMeterEmpty") as §[!B§).setVisibility(true);
               if(_loc3_)
               {
                  addr65:
                  (§#!4§.getItemByName("MovieClip_EagleMeterFill") as §[!B§).setVisibility(true);
                  if(!_loc4_)
                  {
                     addr74:
                     §3!E§.§<!,§("LevelCompletedTheme1");
                     if(_loc4_)
                     {
                     }
                     §§goto(addr93);
                  }
                  this.§>!;§.§0C§(0.7);
               }
               addr93:
               §§push(§,!!§.controller.getEagleScore());
               if(!_loc4_)
               {
                  §§push(int(§§pop()));
               }
               var _loc1_:* = §§pop();
               if(!_loc4_)
               {
                  this.§+W§ = AngryBirdsFP11.sUserProgress.§^z§(§6M§.§[z§);
               }
               var _loc2_:* = _loc1_ > this.§+W§;
               if(_loc2_)
               {
                  this.§&d§(_loc1_);
               }
               (§#!4§.getItemByName("TextField_EaglePercentage") as § p§).§!"§.text = _loc1_ + "%";
               §3!E§.§<!,§("Hiscore_Count",§[J§,100);
               if(_loc3_ || this)
               {
                  §§push(this);
                  §§push(§%!>§.§-]§);
                  §§push(this);
                  §§push({"mEagleScoreCounter":_loc1_});
                  §§push({"mEagleScoreCounter":0});
                  §§push(_loc1_ / 100);
                  if(_loc3_)
                  {
                     §§push(§§pop() * 4);
                  }
                  §§pop().§>q§ = §§pop().§?U§(§§pop(),§§pop(),§§pop(),§§pop());
                  if(!_loc4_)
                  {
                     §§push(this.§>q§);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop().onComplete = this.§=!9§;
                        addr184:
                        §§push(this.§>q§);
                     }
                     §§pop().play();
                     §§goto(addr187);
                  }
                  §§goto(addr184);
               }
               addr187:
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr65);
      }
      
      protected function §&d§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            AngryBirdsFP11.sUserProgress.§4!4§(§6M§.§[z§,param1);
         }
      }
      
      protected function §=!9§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(_loc2_)
         {
            §3!E§.§9o§(§[J§);
            if(_loc2_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr47:
                     §3!E§.§<!,§("Hiscore_Badge",§[J§);
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     addr51:
                     if(!(_loc3_ && _loc2_))
                     {
                        (§#!4§.getItemByName("MovieClip_EagleMeterEffect") as §[!B§).setVisibility(true);
                        if(_loc2_)
                        {
                           (§#!4§.getItemByName("MovieClip_EagleMeterFill") as §[!B§).mClip.filters = [_loc1_];
                        }
                     }
                  }
                  §§goto(addr51);
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(super.run(param1));
         if(_loc5_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            if(§§pop() != §9[§.STATE_STATUS_RUNNING)
            {
               if(!(_loc4_ && this))
               {
                  §§goto(addr43);
               }
               else
               {
                  addr59:
                  (§#!4§.getItemByName("TextField_EaglePercentage") as § p§).§!"§.text = int(this.mEagleScoreCounter) + "%";
                  if(!_loc4_)
                  {
                     (§#!4§.getItemByName("TextField_EaglePercentageEffects") as § p§).§!"§.text = int(this.mEagleScoreCounter) + "%";
                  }
                  else
                  {
                     addr114:
                     (§#!4§.getItemByName("TextField_EaglePercentageEffects") as § p§).§!"§.text = int(this.§+W§) + "%";
                  }
                  var _loc3_:Rectangle = new Rectangle(0,0,this.§1k§ * (this.mEagleScoreCounter / 100),(§#!4§.getItemByName("MovieClip_EagleMeterFill") as §[!B§).height);
                  if(!_loc4_)
                  {
                     (§#!4§.getItemByName("MovieClip_EagleMeterFill") as §[!B§).mClip.scrollRect = _loc3_;
                     if(_loc5_ || _loc2_)
                     {
                        (§#!4§.getItemByName("MovieClip_EagleMeterEffect") as §[!B§).mClip.rotation = (§#!4§.getItemByName("MovieClip_EagleMeterEffect") as §[!B§).mClip.rotation + param1 / 20;
                        if(_loc5_ || this)
                        {
                           if(mNextState.length > 0)
                           {
                              if(!_loc4_)
                              {
                                 addr205:
                                 §,!!§.§;4§.clearLevel();
                                 if(_loc5_)
                                 {
                                    §§goto(addr210);
                                 }
                              }
                              §§goto(addr210);
                           }
                           return §9[§.STATE_STATUS_RUNNING;
                        }
                     }
                     addr210:
                     return §9[§.STATE_STATUS_COMPLETED;
                  }
                  §§goto(addr205);
               }
            }
            else if(int(this.mEagleScoreCounter) > this.§+W§)
            {
               if(_loc4_ && _loc2_)
               {
               }
               §§goto(addr59);
            }
            else
            {
               (§#!4§.getItemByName("TextField_EaglePercentage") as § p§).§!"§.text = int(this.§+W§) + "%";
            }
            §§goto(addr114);
         }
         addr43:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.deActivate();
         if(_loc1_ || this)
         {
            §§push(this.§>!;§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     if(§#!4§.movieClip.contains(this.§>!;§))
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §#!4§.movieClip.removeChild(this.§>!;§);
                           if(_loc2_ && _loc1_)
                           {
                           }
                           (§#!4§.getItemByName("MovieClip_EagleMeterEffect") as §[!B§).setVisibility(false);
                           (§#!4§.getItemByName("Button_Menu") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           addr142:
                           (§#!4§.getItemByName("Button_Replay") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           (§#!4§.getItemByName("Button_NextLevel") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           return;
                           addr117:
                        }
                        §3!E§.§9o§(§[J§);
                        addr76:
                        this.mEagleScoreCounter = 0;
                        if(_loc1_ || _loc1_)
                        {
                           §§push(this.§>q§);
                           if(_loc1_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 addr98:
                                 this.§>q§.stop();
                                 this.§>q§ = null;
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr109:
                                    (§#!4§.getItemByName("MovieClip_EagleMeterFill") as §[!B§).mClip.filters = [];
                                    §§goto(addr117);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr142);
                        addr63:
                     }
                     addr59:
                     this.§>!;§.clean();
                     this.§>!;§ = null;
                     §§goto(addr63);
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr59);
         }
         §§goto(addr142);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("NEXT_LEVEL");
            if(_loc6_)
            {
               §§push(_loc4_);
               if(!(_loc5_ && param2))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc5_ && this)
                        {
                           addr169:
                        }
                     }
                     else
                     {
                        addr166:
                        §§push(3);
                        if(!_loc5_)
                        {
                           §§goto(addr169);
                        }
                     }
                     §§goto(addr174);
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc6_ || param2)
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && param3))
                              {
                                 §§push(1);
                                 if(_loc5_ && this)
                                 {
                                 }
                                 §§goto(addr174);
                              }
                              else
                              {
                                 §§goto(addr154);
                              }
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(_loc6_ || this)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          addr154:
                                          §§push(2);
                                          if(_loc6_ || this)
                                          {
                                          }
                                          §§goto(addr174);
                                       }
                                       else
                                       {
                                          §§goto(addr166);
                                       }
                                    }
                                    else
                                    {
                                       addr165:
                                       if("FULLSCREEN_BUTTON" === _loc4_)
                                       {
                                          §§goto(addr166);
                                       }
                                       else
                                       {
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                              }
                              §§goto(addr165);
                           }
                           addr174:
                           switch(§§pop())
                           {
                              case 0:
                                 § @§.§-!-§();
                                 mNextState = StateCutScene.§0!7§;
                                 if(!(_loc5_ && param3))
                                 {
                                    break;
                                 }
                                 addr40:
                                 break;
                              case 1:
                                 § @§.§'d§();
                                 mNextState = § @§.§0!7§;
                                 §§goto(addr40);
                              case 2:
                                 §3!E§.§#'§();
                                 if(_loc6_ || param3)
                                 {
                                    mNextState = §!,§.§0!7§;
                                 }
                                 break;
                              case 3:
                                 AngryBirdsFP11.§@t§.§"&§();
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                           }
                           return;
                        }
                     }
                     §§goto(addr165);
                  }
               }
            }
            §§goto(addr165);
         }
         §§goto(addr166);
      }
   }
}
