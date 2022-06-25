package §;m§
{
   import §#h§.§ !H§;
   import §'o§.§`K§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§"m§;
   import §4C§.§6<§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §`!%§ extends §>3§
   {
      
      public static const §-!A§:String = "LevelEndEagleState";
      
      private static const §+!$§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §-!A§ = "LevelEndEagleState";
            if(_loc1_)
            {
               addr28:
               §+!$§ = "ScoreLoopCountChannel";
            }
            return;
         }
         §§goto(addr28);
      }
      
      private var §!p§:§3_§;
      
      private var §=@§:§`K§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §6G§:Number;
      
      protected var §0!A§:int;
      
      public function §`!%§(param1:Boolean = false, param2:String = "LevelEndEagleState")
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
               §-f§ = new §0#§(this);
               if(_loc1_)
               {
                  §-f§.init(§06§.§-`§.Views.View_LevelEndEagle[0]);
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
         this.§6G§ = (§-f§.getItemByName("MovieClip_EagleMeterFill") as §"m§).width;
         if(!_loc2_)
         {
            addr84:
            § !H§.§+z§(§+!$§,1,1);
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
         this.§=@§ = new §`K§(0,0,0,0);
         if(!(_loc4_ && _loc1_))
         {
            §-f§.movieClip.addChildAt(this.§=@§,§-f§.movieClip.numChildren - 1);
            if(!(_loc4_ && _loc2_))
            {
               §-f§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
               if(_loc3_)
               {
                  addr63:
                  §-f§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
                  if(!_loc4_)
                  {
                     addr70:
                     § !H§.§ !%§("LevelCompletedTheme1");
                     if(_loc4_)
                     {
                     }
                     §§goto(addr89);
                  }
                  this.§=@§.§?`§(0.7);
               }
               addr89:
               §§push(§"h§.controller.getEagleScore());
               if(!_loc4_)
               {
                  §§push(int(§§pop()));
               }
               var _loc1_:* = §§pop();
               if(!_loc4_)
               {
                  this.§0!A§ = AngryBirdsFP11.sUserProgress.§4a§(§59§.§%j§);
               }
               var _loc2_:* = _loc1_ > this.§0!A§;
               if(_loc2_)
               {
                  this.§@&§(_loc1_);
               }
               (§-f§.getItemByName("TextField_EaglePercentage") as §<k§).§5+§.text = _loc1_ + "%";
               § !H§.§ !%§("Hiscore_Count",§+!$§,100);
               if(_loc3_ || this)
               {
                  §§push(this);
                  §§push(§,!G§.§@j§);
                  §§push(this);
                  §§push({"mEagleScoreCounter":_loc1_});
                  §§push({"mEagleScoreCounter":0});
                  §§push(_loc1_ / 100);
                  if(_loc3_)
                  {
                     §§push(§§pop() * 4);
                  }
                  §§pop().§!p§ = §§pop().§47§(§§pop(),§§pop(),§§pop(),§§pop());
                  if(!_loc4_)
                  {
                     §§push(this.§!p§);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop().onComplete = this.§ !D§;
                        addr180:
                        §§push(this.§!p§);
                     }
                     §§pop().play();
                     §§goto(addr183);
                  }
                  §§goto(addr180);
               }
               addr183:
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr63);
      }
      
      protected function §@&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            AngryBirdsFP11.sUserProgress.§9!3§(§59§.§%j§,param1);
         }
      }
      
      protected function § !D§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(_loc2_)
         {
            § !H§.§]%§(§+!$§);
            if(_loc2_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr47:
                     § !H§.§ !%§("Hiscore_Badge",§+!$§);
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     addr51:
                     if(!(_loc3_ && _loc2_))
                     {
                        (§-f§.getItemByName("MovieClip_EagleMeterEffect") as §"m§).setVisibility(true);
                        if(_loc2_)
                        {
                           (§-f§.getItemByName("MovieClip_EagleMeterFill") as §"m§).mClip.filters = [_loc1_];
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
            if(§§pop() != §>3§.STATE_STATUS_RUNNING)
            {
               if(!(_loc4_ && this))
               {
                  §§goto(addr43);
               }
               else
               {
                  addr59:
                  (§-f§.getItemByName("TextField_EaglePercentage") as §<k§).§5+§.text = int(this.mEagleScoreCounter) + "%";
                  if(!_loc4_)
                  {
                     (§-f§.getItemByName("TextField_EaglePercentageEffects") as §<k§).§5+§.text = int(this.mEagleScoreCounter) + "%";
                  }
                  else
                  {
                     addr114:
                     (§-f§.getItemByName("TextField_EaglePercentageEffects") as §<k§).§5+§.text = int(this.§0!A§) + "%";
                  }
                  var _loc3_:Rectangle = new Rectangle(0,0,this.§6G§ * (this.mEagleScoreCounter / 100),(§-f§.getItemByName("MovieClip_EagleMeterFill") as §"m§).height);
                  if(!_loc4_)
                  {
                     (§-f§.getItemByName("MovieClip_EagleMeterFill") as §"m§).mClip.scrollRect = _loc3_;
                     if(_loc5_ || _loc2_)
                     {
                        (§-f§.getItemByName("MovieClip_EagleMeterEffect") as §"m§).mClip.rotation = (§-f§.getItemByName("MovieClip_EagleMeterEffect") as §"m§).mClip.rotation + param1 / 20;
                        if(_loc5_ || this)
                        {
                           if(mNextState.length > 0)
                           {
                              if(!_loc4_)
                              {
                                 addr205:
                                 §"h§.§1C§.clearLevel();
                                 if(_loc5_)
                                 {
                                    §§goto(addr210);
                                 }
                              }
                              §§goto(addr210);
                           }
                           return §>3§.STATE_STATUS_RUNNING;
                        }
                     }
                     addr210:
                     return §>3§.STATE_STATUS_COMPLETED;
                  }
                  §§goto(addr205);
               }
            }
            else if(int(this.mEagleScoreCounter) > this.§0!A§)
            {
               if(_loc4_ && _loc2_)
               {
               }
               §§goto(addr59);
            }
            else
            {
               (§-f§.getItemByName("TextField_EaglePercentage") as §<k§).§5+§.text = int(this.§0!A§) + "%";
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
            §§push(this.§=@§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     if(§-f§.movieClip.contains(this.§=@§))
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §-f§.movieClip.removeChild(this.§=@§);
                           if(_loc2_ && _loc1_)
                           {
                           }
                           (§-f§.getItemByName("MovieClip_EagleMeterEffect") as §"m§).setVisibility(false);
                           (§-f§.getItemByName("Button_Menu") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           addr142:
                           (§-f§.getItemByName("Button_Replay") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           (§-f§.getItemByName("Button_NextLevel") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           return;
                           addr117:
                        }
                        § !H§.§]%§(§+!$§);
                        addr76:
                        this.mEagleScoreCounter = 0;
                        if(_loc1_ || _loc1_)
                        {
                           §§push(this.§!p§);
                           if(_loc1_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 addr98:
                                 this.§!p§.stop();
                                 this.§!p§ = null;
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr109:
                                    (§-f§.getItemByName("MovieClip_EagleMeterFill") as §"m§).mClip.filters = [];
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
                     this.§=@§.clean();
                     this.§=@§ = null;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
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
                                 §3'§.§+^§();
                                 mNextState = StateCutScene.§-!A§;
                                 if(!(_loc5_ && param3))
                                 {
                                    break;
                                 }
                                 addr40:
                                 break;
                              case 1:
                                 §3'§.§;3§();
                                 mNextState = §3'§.§-!A§;
                                 §§goto(addr40);
                              case 2:
                                 § !H§.§[!<§();
                                 if(_loc6_ || param3)
                                 {
                                    mNextState = this.§52§();
                                 }
                                 break;
                              case 3:
                                 AngryBirdsFP11.§0P§.§<h§();
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
      
      public function §52§() : String
      {
         return §>!B§.§-!A§;
      }
   }
}
