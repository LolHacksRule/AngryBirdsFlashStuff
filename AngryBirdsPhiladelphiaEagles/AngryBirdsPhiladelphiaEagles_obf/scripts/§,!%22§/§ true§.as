package §,!"§
{
   import § !B§.§-#§;
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class § true§ extends §'!#§
   {
      
      public static const §-A§:String = "LevelEndEagleState";
      
      private static const §%8§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §-A§ = "LevelEndEagleState";
         }
         do
         {
            §%8§ = "ScoreLoopCountChannel";
         }
         while(_loc2_);
         
      }
      
      private var §3=§:§[!9§;
      
      private var §!>§:§-#§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §=!I§:Number;
      
      protected var §&!1§:int;
      
      public function § true§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            while(true)
            {
               §0q§ = new §`o§(this);
            }
            addr93:
         }
         loop1:
         while(true)
         {
            §0q§.init(§`Z§.§5c§.Views.View_LevelEndEagle[0]);
            while(!_loc1_)
            {
               this.§=!I§ = (§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).width;
               do
               {
                  §[!7§.§'<§(§%8§,1,1);
               }
               while(!_loc2_);
               
               if(_loc1_)
               {
                  continue;
               }
               if(!_loc1_)
               {
                  break loop1;
               }
               §§goto(addr93);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.activate();
            this.§!>§ = new §-#§(0,0,0,0);
            §0q§.movieClip.addChildAt(this.§!>§,§0q§.movieClip.numChildren - 1);
            §0q§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
            loop0:
            while(true)
            {
               §0q§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
               addr41:
               while(true)
               {
                  §[!7§.playSound("LevelCompletedTheme1");
                  continue loop0;
               }
            }
            addr59:
         }
         while(true)
         {
            this.§!>§.fadeToAlpha(0.7);
            if(_loc3_ && _loc1_)
            {
               continue;
            }
            if(_loc4_ || _loc1_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr59);
            }
            §§goto(addr41);
         }
         §§push(§#! §.controller.getEagleScore());
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            this.§&!1§ = AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§);
         }
         var _loc2_:* = _loc1_ > this.§&!1§;
         if(_loc4_ || this)
         {
            if(_loc2_)
            {
               while(true)
               {
                  this.§ !@§(_loc1_);
                  §§goto(addr200);
               }
            }
            addr200:
            while(true)
            {
               (§0q§.getItemByName("TextField_EaglePercentage") as §@4§).§!!@§.text = _loc1_ + "%";
               §[!7§.playSound("Hiscore_Count",§%8§,100);
               if(_loc4_)
               {
                  break;
               }
               continue loop3;
            }
            §§push(this);
            §§push(§3C§.§>o§);
            §§push(this);
            §§push({"mEagleScoreCounter":_loc1_});
            §§push({"mEagleScoreCounter":0});
            §§push(_loc1_ / 100);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() * 4);
            }
            §§goto(addr190);
         }
         addr190:
         §§pop().§3=§ = §§pop().§<t§(§§pop(),§§pop(),§§pop(),§§pop());
         loop5:
         do
         {
            §§push(this.§3=§);
            while(true)
            {
               §§pop().onComplete = this.§7'§;
               while(true)
               {
                  §§push(this.§3=§);
                  if(_loc3_ && this)
                  {
                     break;
                  }
                  §§pop().play();
                  if(!_loc3_)
                  {
                     continue loop5;
                  }
               }
            }
         }
         while(!_loc4_);
         
      }
      
      protected function § !@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            AngryBirdsFP11.§`I§.§6y§(§`!K§.§5g§,param1);
         }
      }
      
      protected function §7'§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GlowFilter = null;
         if(!_loc2_)
         {
            §[!7§.§9!K§(§%8§);
            if(_loc3_ || _loc3_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc3_)
                  {
                     addr48:
                     §[!7§.playSound("Hiscore_Badge",§%8§);
                  }
                  _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                  if(_loc3_ || this)
                  {
                     (§0q§.getItemByName("MovieClip_EagleMeterEffect") as §!o§).setVisibility(true);
                     if(_loc2_ && this)
                     {
                     }
                     §§goto(addr102);
                  }
                  (§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).mClip.filters = [_loc1_];
               }
               addr102:
               return;
            }
         }
         §§goto(addr48);
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
         if(!(_loc4_ && param1))
         {
            if(§§pop() == §'!#§.STATE_STATUS_RUNNING)
            {
               if(int(this.mEagleScoreCounter) > this.§&!1§)
               {
                  (§0q§.getItemByName("TextField_EaglePercentage") as §@4§).§!!@§.text = int(this.mEagleScoreCounter) + "%";
               }
               else
               {
                  (§0q§.getItemByName("TextField_EaglePercentage") as §@4§).§!!@§.text = int(this.§&!1§) + "%";
                  (§0q§.getItemByName("TextField_EaglePercentageEffects") as §@4§).§!!@§.text = int(this.§&!1§) + "%";
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        if(false)
                        {
                           addr51:
                        }
                        var _loc3_:Rectangle = new Rectangle(0,0,this.§=!I§ * (this.mEagleScoreCounter / 100),(§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).height);
                        if(!_loc4_)
                        {
                           (§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).mClip.scrollRect = _loc3_;
                           do
                           {
                              (§0q§.getItemByName("MovieClip_EagleMeterEffect") as §!o§).mClip.rotation = (§0q§.getItemByName("MovieClip_EagleMeterEffect") as §!o§).mClip.rotation + param1 / 20;
                           }
                           while(!(_loc5_ || _loc3_));
                           
                        }
                        if(mNextState.length > 0)
                        {
                           if(_loc5_ || this)
                           {
                              §#! §.§`'§.clearLevel();
                           }
                           return §'!#§.STATE_STATUS_COMPLETED;
                        }
                        return §'!#§.STATE_STATUS_RUNNING;
                     }
                     addr131:
                     return _loc2_;
                     addr130:
                  }
                  else
                  {
                     (§0q§.getItemByName("TextField_EaglePercentageEffects") as §@4§).§!!@§.text = int(this.mEagleScoreCounter) + "%";
                     addr118:
                  }
                  §§goto(addr51);
               }
               §§goto(addr118);
            }
            §§goto(addr130);
         }
         §§goto(addr131);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.deActivate();
         §§push(this.§!>§);
         loop0:
         while(§§pop())
         {
            if(§0q§.movieClip.contains(this.§!>§))
            {
               §0q§.movieClip.removeChild(this.§!>§);
            }
            §§push(this.§!>§);
            if(_loc1_ && _loc1_)
            {
               continue;
            }
            §§pop().clean();
            this.§!>§ = null;
            loop1:
            while(true)
            {
               break loop0;
               addr105:
               (§0q§.getItemByName("MovieClip_EagleMeterEffect") as §!o§).setVisibility(false);
               if(_loc2_ || _loc2_)
               {
                  (§0q§.getItemByName("Button_Menu") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  do
                  {
                     (§0q§.getItemByName("Button_Replay") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     do
                     {
                        (§0q§.getItemByName("Button_NextLevel") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                     while(_loc1_ && _loc2_);
                     
                  }
                  while(!_loc2_);
                  
                  addr88:
                  if(_loc1_)
                  {
                     while(true)
                     {
                        §§push(this.§3=§);
                        addr119:
                        while(true)
                        {
                           §§pop().stop();
                           this.§3=§ = null;
                           loop7:
                           while(true)
                           {
                              addr89:
                              while(true)
                              {
                                 (§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).mClip.filters = [];
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop7;
                                 }
                                 §§goto(addr105);
                                 continue loop7;
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr88);
                     }
                     addr117:
                  }
                  return;
               }
            }
         }
         while(true)
         {
            §[!7§.§9!K§(§%8§);
            this.mEagleScoreCounter = 0;
            §§push(this.§3=§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  §§goto(addr117);
               }
               §§goto(addr89);
            }
            §§goto(addr119);
         }
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param2)
         {
            §§push("NEXT_LEVEL");
            if(!(_loc5_ && param3))
            {
               §§push(_loc4_);
               if(_loc6_ || this)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr152:
                        §§push(2);
                        if(_loc6_)
                        {
                           addr155:
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!(_loc5_ && param3))
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr172);
                                 }
                                 else
                                 {
                                    §§goto(addr155);
                                 }
                              }
                              else
                              {
                                 §§goto(addr152);
                              }
                              §§goto(addr172);
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc6_)
                              {
                                 addr131:
                                 §§push(_loc4_);
                                 if(!_loc5_)
                                 {
                                    addr134:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          §§goto(addr152);
                                       }
                                    }
                                    else
                                    {
                                       addr157:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr172:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §-O§.§ b§();
                                                mNextState = StateCutScene.§-A§;
                                                break;
                                                addr64:
                                             case 1:
                                                §-O§.§8!5§();
                                                mNextState = §-O§.§-A§;
                                                break;
                                             case 2:
                                                §[!7§.§=0§();
                                                addr28:
                                                mNextState = this.§2V§();
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                break;
                                             case 3:
                                                AngryBirdsFP11.§`y§.§,,§();
                                                if(!_loc5_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr28);
                                                }
                                                else
                                                {
                                                   §§goto(addr64);
                                                }
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr172);
                                    §§goto(addr172);
                                 }
                              }
                              §§goto(addr157);
                           }
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr172);
               }
               §§goto(addr134);
            }
            §§goto(addr157);
         }
         §§goto(addr152);
      }
      
      public function §2V§() : String
      {
         return §0!5§.§-A§;
      }
   }
}
