package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §87§.§<8§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§`!6§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §"8§ extends §#!,§
   {
      
      public static const §?x§:String = "LevelEndEagleState";
      
      private static const §6'§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §?x§ = "LevelEndEagleState";
            if(_loc1_)
            {
               addr28:
               §6'§ = "ScoreLoopCountChannel";
            }
            return;
         }
         §§goto(addr28);
      }
      
      private var §3b§:§?!3§;
      
      private var §<!4§:§<8§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §9l§:Number;
      
      protected var §]q§:int;
      
      public function §"8§(param1:Boolean = false, param2:String = "LevelEndEagleState")
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
               §[=§ = new §^3§(this);
               if(_loc1_)
               {
                  §[=§.init(§!I§.§7y§.Views.View_LevelEndEagle[0]);
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
         this.§9l§ = (§[=§.getItemByName("MovieClip_EagleMeterFill") as §`!6§).width;
         if(!_loc2_)
         {
            addr84:
            §6I§.§"!'§(§6'§,1,1);
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
         this.§<!4§ = new §<8§(0,0,0,0);
         if(!(_loc4_ && _loc1_))
         {
            §[=§.movieClip.addChildAt(this.§<!4§,§[=§.movieClip.numChildren - 1);
            if(!(_loc4_ && _loc2_))
            {
               §[=§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
               if(_loc3_)
               {
                  addr63:
                  §[=§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
                  if(!_loc4_)
                  {
                     addr70:
                     §6I§.§ ;§("LevelCompletedTheme1");
                     if(_loc4_)
                     {
                     }
                     §§goto(addr89);
                  }
                  this.§<!4§.§4J§(0.7);
               }
               addr89:
               §§push(§[k§.controller.getEagleScore());
               if(!_loc4_)
               {
                  §§push(int(§§pop()));
               }
               var _loc1_:* = §§pop();
               if(!_loc4_)
               {
                  this.§]q§ = AngryBirdsFP11.sUserProgress.§ !&§(§5j§.§%V§);
               }
               var _loc2_:* = _loc1_ > this.§]q§;
               if(_loc2_)
               {
                  this.§8s§(_loc1_);
               }
               (§[=§.getItemByName("TextField_EaglePercentage") as §3D§).§7=§.text = _loc1_ + "%";
               §6I§.§ ;§("Hiscore_Count",§6'§,100);
               if(_loc3_ || this)
               {
                  §§push(this);
                  §§push(§,B§.§^n§);
                  §§push(this);
                  §§push({"mEagleScoreCounter":_loc1_});
                  §§push({"mEagleScoreCounter":0});
                  §§push(_loc1_ / 100);
                  if(_loc3_)
                  {
                     §§push(§§pop() * 4);
                  }
                  §§pop().§3b§ = §§pop().§2E§(§§pop(),§§pop(),§§pop(),§§pop());
                  if(!_loc4_)
                  {
                     §§push(this.§3b§);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop().onComplete = this.§8v§;
                        addr180:
                        §§push(this.§3b§);
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
      
      protected function §8s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            AngryBirdsFP11.sUserProgress.§]!'§(§5j§.§%V§,param1);
         }
      }
      
      protected function §8v§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(_loc2_)
         {
            §6I§.§9w§(§6'§);
            if(_loc2_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr47:
                     §6I§.§ ;§("Hiscore_Badge",§6'§);
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     addr51:
                     if(!(_loc3_ && _loc2_))
                     {
                        (§[=§.getItemByName("MovieClip_EagleMeterEffect") as §`!6§).setVisibility(true);
                        if(_loc2_)
                        {
                           (§[=§.getItemByName("MovieClip_EagleMeterFill") as §`!6§).mClip.filters = [_loc1_];
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
            if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
            {
               if(!(_loc4_ && this))
               {
                  §§goto(addr43);
               }
               else
               {
                  addr59:
                  (§[=§.getItemByName("TextField_EaglePercentage") as §3D§).§7=§.text = int(this.mEagleScoreCounter) + "%";
                  if(!_loc4_)
                  {
                     (§[=§.getItemByName("TextField_EaglePercentageEffects") as §3D§).§7=§.text = int(this.mEagleScoreCounter) + "%";
                  }
                  else
                  {
                     addr114:
                     (§[=§.getItemByName("TextField_EaglePercentageEffects") as §3D§).§7=§.text = int(this.§]q§) + "%";
                  }
                  var _loc3_:Rectangle = new Rectangle(0,0,this.§9l§ * (this.mEagleScoreCounter / 100),(§[=§.getItemByName("MovieClip_EagleMeterFill") as §`!6§).height);
                  if(!_loc4_)
                  {
                     (§[=§.getItemByName("MovieClip_EagleMeterFill") as §`!6§).mClip.scrollRect = _loc3_;
                     if(_loc5_ || _loc2_)
                     {
                        (§[=§.getItemByName("MovieClip_EagleMeterEffect") as §`!6§).mClip.rotation = (§[=§.getItemByName("MovieClip_EagleMeterEffect") as §`!6§).mClip.rotation + param1 / 20;
                        if(_loc5_ || this)
                        {
                           if(mNextState.length > 0)
                           {
                              if(!_loc4_)
                              {
                                 addr205:
                                 §[k§.§&@§.clearLevel();
                                 if(_loc5_)
                                 {
                                    §§goto(addr210);
                                 }
                              }
                              §§goto(addr210);
                           }
                           return §#!,§.STATE_STATUS_RUNNING;
                        }
                     }
                     addr210:
                     return §#!,§.STATE_STATUS_COMPLETED;
                  }
                  §§goto(addr205);
               }
            }
            else if(int(this.mEagleScoreCounter) > this.§]q§)
            {
               if(_loc4_ && _loc2_)
               {
               }
               §§goto(addr59);
            }
            else
            {
               (§[=§.getItemByName("TextField_EaglePercentage") as §3D§).§7=§.text = int(this.§]q§) + "%";
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
            §§push(this.§<!4§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     if(§[=§.movieClip.contains(this.§<!4§))
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §[=§.movieClip.removeChild(this.§<!4§);
                           if(_loc2_ && _loc1_)
                           {
                           }
                           (§[=§.getItemByName("MovieClip_EagleMeterEffect") as §`!6§).setVisibility(false);
                           (§[=§.getItemByName("Button_Menu") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           addr142:
                           (§[=§.getItemByName("Button_Replay") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           (§[=§.getItemByName("Button_NextLevel") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           return;
                           addr117:
                        }
                        §6I§.§9w§(§6'§);
                        addr76:
                        this.mEagleScoreCounter = 0;
                        if(_loc1_ || _loc1_)
                        {
                           §§push(this.§3b§);
                           if(_loc1_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 addr98:
                                 this.§3b§.stop();
                                 this.§3b§ = null;
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr109:
                                    (§[=§.getItemByName("MovieClip_EagleMeterFill") as §`!6§).mClip.filters = [];
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
                     this.§<!4§.clean();
                     this.§<!4§ = null;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
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
                                 §,w§.§^^§();
                                 mNextState = StateCutScene.§?x§;
                                 if(!(_loc5_ && param3))
                                 {
                                    break;
                                 }
                                 addr40:
                                 break;
                              case 1:
                                 §,w§.§9!D§();
                                 mNextState = §,w§.§?x§;
                                 §§goto(addr40);
                              case 2:
                                 §6I§.§%,§();
                                 if(_loc6_ || param3)
                                 {
                                    mNextState = §5O§.§?x§;
                                 }
                                 break;
                              case 3:
                                 AngryBirdsFP11.§,s§.§8!1§();
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
