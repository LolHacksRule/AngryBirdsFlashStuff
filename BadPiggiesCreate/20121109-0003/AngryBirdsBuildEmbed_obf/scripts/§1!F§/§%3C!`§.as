package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §5!`§.§%!Y§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §<!`§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §]!2§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §<!`§)
         {
            STATE_NAME = "LevelEndEagleState";
            if(_loc1_ || _loc2_)
            {
               §]!2§ = "ScoreLoopCountChannel";
            }
         }
      }
      
      private var §5!E§:§0Y§;
      
      private var §7H§:§%!Y§;
      
      public var mEagleScoreCounter:Number;
      
      private var §-!d§:Number;
      
      private var §`;§:int;
      
      public function §<!`§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
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
            if(_loc1_ || _loc1_)
            {
               §+!$§ = new §2U§(this);
               if(_loc1_ || _loc2_)
               {
                  §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndEagle[0]);
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§-!d§ = (§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).width;
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr89);
                  }
               }
            }
            §+!§.§#n§(§]!2§,1,1);
         }
         addr89:
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super.activate();
         this.§7H§ = new §%!Y§(0,0,0,0);
         §+!$§.movieClip.addChildAt(this.§7H§,§+!$§.movieClip.numChildren - 1);
         if(!_loc4_)
         {
            (§+!$§.getItemByName("MovieClip_EagleMeterEmpty") as §%O§).setVisibility(true);
            (§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).setVisibility(true);
            if(_loc3_ || this)
            {
               §+!§.§4c§("LevelCompletedTheme1");
            }
         }
         this.§7H§.§#[§(0.7);
         §§push(§'!V§.§?!G§.getEagleScore());
         if(_loc3_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc4_ && _loc1_))
         {
            this.§`;§ = AngryBirdsFP11.sUserProgress.§8!O§(§1^§.§ ]§);
         }
         var _loc2_:* = _loc1_ > this.§`;§;
         if(!(_loc4_ && _loc1_))
         {
            if(_loc2_)
            {
               if(!(_loc4_ && this))
               {
                  this.§>!!§(_loc1_);
                  addr125:
                  (§+!$§.getItemByName("TextField_EaglePercentage") as §;!j§).§!D§.text = _loc1_ + "%";
                  if(!(_loc4_ && this))
                  {
                     addr142:
                     §+!§.§4c§("Hiscore_Count",§]!2§,100);
                     if(_loc3_)
                     {
                        §§push(this);
                        §§push(§@!T§.§`!t§);
                        §§push(this);
                        §§push({"mEagleScoreCounter":_loc1_});
                        §§push({"mEagleScoreCounter":0});
                        §§push(_loc1_ / 100);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(§§pop() * 4);
                        }
                        §§pop().§5!E§ = §§pop().§8!"§(§§pop(),§§pop(),§§pop(),§§pop());
                        §§goto(addr183);
                     }
                  }
                  §§goto(addr190);
               }
               addr183:
               §§push(this.§5!E§);
               if(_loc3_)
               {
                  §§pop().onComplete = this.§<I§;
                  addr190:
                  §§push(this.§5!E§);
               }
               §§pop().play();
               return;
            }
            §§goto(addr125);
         }
         §§goto(addr142);
      }
      
      protected function §>!!§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            AngryBirdsFP11.sUserProgress.§]!L§(§1^§.§ ]§,param1);
         }
      }
      
      protected function §<I§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(_loc2_)
         {
            §+!§.§+!h§(§]!2§);
            if(!(_loc3_ && _loc3_))
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(!_loc3_)
                  {
                     addr47:
                     §+!§.§4c§("Hiscore_Badge",§]!2§);
                  }
                  _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                  if(!(_loc3_ && _loc1_))
                  {
                     (§+!$§.getItemByName("MovieClip_EagleMeterEffect") as §%O§).setVisibility(true);
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr96);
                  }
                  (§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).mClip.filters = [_loc1_];
               }
               addr96:
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
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_ || _loc2_)
         {
            if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
            {
               if(!_loc4_)
               {
                  §§goto(addr38);
               }
            }
            else
            {
               if(int(this.mEagleScoreCounter) > this.§`;§)
               {
                  if(!(_loc4_ && param1))
                  {
                     (§+!$§.getItemByName("TextField_EaglePercentage") as §;!j§).§!D§.text = int(this.mEagleScoreCounter) + "%";
                     if(_loc4_)
                     {
                     }
                     addr123:
                     var _loc3_:Rectangle = new Rectangle(0,0,this.§-!d§ * (this.mEagleScoreCounter / 100),(§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).height);
                     if(!_loc4_)
                     {
                        (§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).mClip.scrollRect = _loc3_;
                        if(_loc5_)
                        {
                           (§+!$§.getItemByName("MovieClip_EagleMeterEffect") as §%O§).mClip.rotation = (§+!$§.getItemByName("MovieClip_EagleMeterEffect") as §%O§).mClip.rotation + param1 / 20;
                           if(_loc5_)
                           {
                              if(mNextState.length > 0)
                              {
                                 if(!_loc4_)
                                 {
                                    addr190:
                                    §'!V§.§1!2§.clearLevel();
                                    if(!_loc4_)
                                    {
                                       §§goto(addr195);
                                    }
                                 }
                                 §§goto(addr195);
                              }
                              return §;!!§.STATE_STATUS_RUNNING;
                           }
                           addr195:
                           return §;!!§.STATE_STATUS_COMPLETED;
                        }
                     }
                     §§goto(addr190);
                  }
                  (§+!$§.getItemByName("TextField_EaglePercentageEffects") as §;!j§).§!D§.text = int(this.mEagleScoreCounter) + "%";
               }
               else
               {
                  (§+!$§.getItemByName("TextField_EaglePercentage") as §;!j§).§!D§.text = int(this.§`;§) + "%";
                  addr109:
                  (§+!$§.getItemByName("TextField_EaglePercentageEffects") as §;!j§).§!D§.text = int(this.§`;§) + "%";
               }
               §§goto(addr123);
            }
            §§goto(addr109);
         }
         addr38:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
            §§push(this.§7H§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     if(§+!$§.movieClip.contains(this.§7H§))
                     {
                        §+!$§.movieClip.removeChild(this.§7H§);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr52:
                           this.§7H§.clean();
                           this.§7H§ = null;
                           addr50:
                           if(_loc1_)
                           {
                              addr58:
                              §+!§.§+!h§(§]!2§);
                              if(!(_loc2_ && this))
                              {
                                 this.mEagleScoreCounter = 0;
                                 §§push(this.§5!E§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          addr100:
                                          this.§5!E§.stop();
                                          if(!_loc2_)
                                          {
                                             addr103:
                                             this.§5!E§ = null;
                                          }
                                          (§+!$§.getItemByName("MovieClip_EagleMeterEffect") as §%O§).setVisibility(false);
                                          (§+!$§.getItemByName("Button_Menu") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          §§goto(addr114);
                                       }
                                    }
                                    (§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).mClip.filters = [];
                                    addr114:
                                    if(!_loc2_)
                                    {
                                       addr141:
                                       (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       addr149:
                                       (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr141);
               }
               §§goto(addr58);
            }
            §§goto(addr52);
         }
         §§goto(addr103);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param3)
         {
            §§push("NEXT_LEVEL");
            if(!(_loc5_ && param1))
            {
               §§push(_loc4_);
               if(!(_loc5_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr170:
                        §§push(3);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr178);
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!_loc5_)
                     {
                        addr109:
                        §§push(_loc4_);
                        if(_loc6_ || param1)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && param2))
                              {
                                 §§push(1);
                                 if(!_loc6_)
                                 {
                                    addr166:
                                 }
                              }
                              else
                              {
                                 §§goto(addr170);
                              }
                              §§goto(addr178);
                           }
                           else
                           {
                              §§push("MENU");
                              if(!(_loc5_ && param2))
                              {
                                 addr137:
                                 §§push(_loc4_);
                                 if(!(_loc5_ && param2))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          addr163:
                                          §§push(2);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr166);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr170);
                                       }
                                       §§goto(addr178);
                                    }
                                    else
                                    {
                                       §§push("FULLSCREEN_BUTTON");
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr169);
                              }
                              addr169:
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr170);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              addr178:
                              switch(§§pop())
                              {
                                 case 0:
                                    §26§.§=0§();
                                    if(!_loc5_)
                                    {
                                       mNextState = StateCutScene.STATE_NAME;
                                       break;
                                    }
                                    addr50:
                                    mNextState = §?&§.STATE_NAME;
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    addr61:
                                    break;
                                 case 1:
                                    §26§.§!=§();
                                    if(_loc6_)
                                    {
                                       mNextState = §26§.STATE_NAME;
                                       if(_loc6_ || param2)
                                       {
                                          break;
                                       }
                                       §§goto(addr50);
                                    }
                                    break;
                                 case 2:
                                    §+!§.§'!Q§();
                                    if(_loc6_)
                                    {
                                       §§goto(addr50);
                                    }
                                    §§goto(addr61);
                                 case 3:
                                    AngryBirdsFP11.§`!d§.§!5§();
                                    §§goto(addr61);
                              }
                              return;
                              §§push(_loc4_);
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr137);
                  }
               }
               §§goto(addr137);
            }
            §§goto(addr109);
         }
         §§goto(addr163);
      }
   }
}
