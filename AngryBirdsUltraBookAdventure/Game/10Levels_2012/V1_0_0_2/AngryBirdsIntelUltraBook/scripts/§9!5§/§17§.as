package §9!5§
{
   import §"R§.§ !Q§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §4L§.§,!_§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§5!I§;
   import §?!7§.§[I§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import §true§.§ _§;
   
   public class §17§ extends §?Y§
   {
      
      public static const §?h§:String = "LevelEndEagleState";
      
      private static const §+%§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §17§))
         {
            §?h§ = "LevelEndEagleState";
            do
            {
               §+%§ = "ScoreLoopCountChannel";
            }
            while(!(_loc2_ || §17§));
            
         }
      }
      
      private var §<!_§:§4!Z§;
      
      private var §#x§:§,!_§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §>!&§:Number;
      
      protected var §5-§:int;
      
      public function §17§(param1:Boolean = false, param2:String = "LevelEndEagleState")
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            while(true)
            {
               §5!P§ = new §'!^§(this);
               loop1:
               while(!_loc1_)
               {
                  §5!P§.init(§[!'§.§+@§.Views.View_LevelEndEagle[0]);
                  loop2:
                  do
                  {
                     this.§>!&§ = (§5!P§.getItemByName("MovieClip_EagleMeterFill") as §[I§).width;
                     while(_loc2_)
                     {
                        § !Q§.§]!h§(§+%§,1,1);
                        if(!_loc1_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!(_loc2_ || this));
                  
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§#x§ = new §,!_§(0,0,0,0);
               loop1:
               while(true)
               {
                  §5!P§.movieClip.addChildAt(this.§#x§,§5!P§.movieClip.numChildren - 1);
                  addr82:
                  while(true)
                  {
                     §5!P§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
                  }
                  addr33:
                  if(_loc4_ && _loc2_)
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop5:
                     while(true)
                     {
                        § !Q§.playSound("LevelCompletedTheme1");
                        while(_loc3_)
                        {
                           this.§#x§.§7!+§(0.7);
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              break loop5;
                           }
                           §§goto(addr33);
                        }
                        loop4:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           addr71:
                           while(true)
                           {
                              §5!P§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
                              continue loop4;
                           }
                        }
                        continue loop1;
                     }
                     §§goto(addr82);
                     addr42:
                  }
                  §§push(§ _§.§?!]§.getEagleScore());
                  if(!_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc1_:* = §§pop();
                  if(!_loc4_)
                  {
                     this.§5-§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§4Y§);
                  }
                  var _loc2_:* = _loc1_ > this.§5-§;
                  if(_loc3_ || this)
                  {
                     if(_loc2_)
                     {
                        while(true)
                        {
                           this.§;!4§(_loc1_);
                           addr250:
                           while(true)
                           {
                           }
                           loop11:
                           for(; !(_loc4_ && _loc3_); if(_loc4_ && _loc3_)
                           {
                              continue;
                           },§§goto(addr173))
                           {
                              while(true)
                              {
                                 §§push(this);
                                 §§push(§,!b§.§<d§);
                                 §§push(this);
                                 §§push({"mEagleScoreCounter":_loc1_});
                                 §§push({"mEagleScoreCounter":0});
                                 §§push(_loc1_ / 100);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(§§pop() * 4);
                                 }
                                 §§pop().§<!_§ = §§pop().§>a§(§§pop(),§§pop(),§§pop(),§§pop());
                                 loop13:
                                 for(; !_loc4_; while(_loc3_ || this)
                                 {
                                    continue loop11;
                                 })
                                 {
                                    §§push(this.§<!_§);
                                    while(true)
                                    {
                                       §§pop().onComplete = this.§!!>§;
                                       §§push(this.§<!_§);
                                       addr173:
                                       continue loop13;
                                       if(!_loc4_)
                                       {
                                          §§pop().play();
                                          if(_loc3_ || _loc1_)
                                          {
                                             return;
                                          }
                                          continue loop13;
                                       }
                                    }
                                 }
                                 addr237:
                                 while(_loc3_ || this)
                                 {
                                    § !Q§.playSound("Hiscore_Count",§+%§,100);
                                    continue loop11;
                                 }
                                 §§goto(addr250);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        (§5!P§.getItemByName("TextField_EaglePercentage") as §"j§).§"E§.text = _loc1_ + "%";
                        §§goto(addr237);
                        §§goto(addr250);
                     }
                  }
                  §§goto(addr225);
               }
            }
         }
         §§goto(addr71);
      }
      
      protected function §;!4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            AngryBirdsFP11.sUserProgress.§5U§(LevelManager.§4Y§,param1);
         }
      }
      
      protected function §!!>§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GlowFilter = null;
         if(!(_loc2_ && _loc3_))
         {
            § !Q§.§9!t§(§+%§);
            if(_loc3_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc3_)
                  {
                     addr48:
                     § !Q§.playSound("Hiscore_Badge",§+%§);
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     addr52:
                     if(_loc3_)
                     {
                        (§5!P§.getItemByName("MovieClip_EagleMeterEffect") as §[I§).setVisibility(true);
                        if(!_loc3_)
                        {
                        }
                        §§goto(addr92);
                     }
                     (§5!P§.getItemByName("MovieClip_EagleMeterFill") as §[I§).mClip.filters = [_loc1_];
                  }
                  §§goto(addr52);
               }
               addr92:
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
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() == §?Y§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(int(this.mEagleScoreCounter) <= this.§5-§)
                  {
                     (§5!P§.getItemByName("TextField_EaglePercentage") as §"j§).§"E§.text = int(this.§5-§) + "%";
                     while(_loc5_)
                     {
                        if(_loc4_ && _loc2_)
                        {
                           return _loc2_;
                        }
                        addr145:
                        (§5!P§.getItemByName("TextField_EaglePercentageEffects") as §"j§).§"E§.text = int(this.§5-§) + "%";
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && this))
                           {
                              if(!_loc5_)
                              {
                                 break loop0;
                              }
                              if(!(_loc5_ || _loc2_))
                              {
                                 continue loop0;
                              }
                              if(false)
                              {
                                 addr62:
                              }
                              var _loc3_:Rectangle = new Rectangle(0,0,this.§>!&§ * (this.mEagleScoreCounter / 100),(§5!P§.getItemByName("MovieClip_EagleMeterFill") as §[I§).height);
                              if(_loc5_)
                              {
                                 (§5!P§.getItemByName("MovieClip_EagleMeterFill") as §[I§).mClip.scrollRect = _loc3_;
                                 while(true)
                                 {
                                    (§5!P§.getItemByName("MovieClip_EagleMeterEffect") as §[I§).mClip.rotation = (§5!P§.getItemByName("MovieClip_EagleMeterEffect") as §[I§).mClip.rotation + param1 / 20;
                                    while(true)
                                    {
                                       if(mNextState.length <= 0)
                                       {
                                          return §?Y§.STATE_STATUS_RUNNING;
                                       }
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       § _§.§!6§.clearLevel();
                                       if(_loc5_)
                                       {
                                          return §?Y§.STATE_STATUS_COMPLETED;
                                          addr207:
                                       }
                                    }
                                 }
                              }
                              §§goto(addr207);
                           }
                           (§5!P§.getItemByName("TextField_EaglePercentageEffects") as §"j§).§"E§.text = int(this.mEagleScoreCounter) + "%";
                           break;
                           addr138:
                        }
                     }
                     §§goto(addr62);
                  }
                  (§5!P§.getItemByName("TextField_EaglePercentage") as §"j§).§"E§.text = int(this.mEagleScoreCounter) + "%";
                  §§goto(addr138);
               }
            }
            §§goto(addr145);
         }
         §§goto(addr114);
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
               §§push(this.§#x§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        § !Q§.§9!t§(§+%§);
                        loop8:
                        while(true)
                        {
                           this.mEagleScoreCounter = 0;
                           loop9:
                           while(_loc1_)
                           {
                              §§push(this.§<!_§);
                              if(!(_loc2_ && this))
                              {
                                 if(§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§<!_§);
                                       addr162:
                                       while(true)
                                       {
                                          §§pop().stop();
                                          addr163:
                                          loop15:
                                          while(true)
                                          {
                                             if(!(_loc1_ || _loc2_))
                                             {
                                                continue loop7;
                                             }
                                             if(!_loc2_)
                                             {
                                                this.§<!_§ = null;
                                                loop16:
                                                while(true)
                                                {
                                                   addr127:
                                                   while(true)
                                                   {
                                                      (§5!P§.getItemByName("MovieClip_EagleMeterFill") as §[I§).mClip.filters = [];
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!(_loc2_ && this))
                                                         {
                                                            (§5!P§.getItemByName("MovieClip_EagleMeterEffect") as §[I§).setVisibility(false);
                                                            loop13:
                                                            while(_loc1_)
                                                            {
                                                               while(true)
                                                               {
                                                                  (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                  while(_loc1_ || _loc2_)
                                                                  {
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                        while(!(_loc2_ && _loc1_))
                                                                        {
                                                                           continue loop10;
                                                                           (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                           if(!_loc1_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr34);
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     addr211:
                                                                     while(true)
                                                                     {
                                                                        if(!§5!P§.movieClip.contains(this.§#x§))
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           §5!P§.movieClip.removeChild(this.§#x§);
                                                                        }
                                                                     }
                                                                     if(_loc1_ || _loc1_)
                                                                     {
                                                                        if(_loc1_ || this)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               return;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop15;
                                                      }
                                                      continue loop15;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr162);
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr211);
               }
            }
         }
         §§goto(addr126);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && this))
         {
            §§push("NEXT_LEVEL");
            if(_loc5_ || this)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                           addr201:
                        }
                     }
                     else
                     {
                        addr181:
                        §§push(2);
                        if(_loc5_ || this)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!_loc6_)
                     {
                        §§push(_loc4_);
                        if(_loc5_ || param3)
                        {
                           addr145:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                    §§goto(addr206);
                                 }
                                 else
                                 {
                                    §§goto(addr201);
                                 }
                              }
                              else
                              {
                                 §§goto(addr181);
                              }
                              §§goto(addr206);
                           }
                           else
                           {
                              §§push("MENU");
                              if(!_loc6_)
                              {
                                 addr155:
                                 §§push(_loc4_);
                                 if(!(_loc6_ && this))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          §§goto(addr181);
                                       }
                                    }
                                    else
                                    {
                                       addr192:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr206:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §#!c§.§ !0§();
                                                mNextState = StateCutScene.§?h§;
                                                break;
                                                addr103:
                                                addr88:
                                             case 1:
                                                §#!c§.§6d§();
                                                addr80:
                                                if(_loc5_)
                                                {
                                                   mNextState = §#!c§.§?h§;
                                                   addr72:
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr103);
                                                }
                                                §§goto(addr88);
                                             case 2:
                                                § !Q§.§"!"§();
                                                if(_loc5_)
                                                {
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      addr39:
                                                      mNextState = § B§.§?h§;
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr80);
                                                   }
                                                   §§goto(addr72);
                                                }
                                                break;
                                             case 3:
                                                AngryBirdsFP11.§3!a§.§8!d§();
                                                if(!(_loc6_ && param3))
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr39);
                                                   }
                                                   §§goto(addr39);
                                                }
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr206);
                                    §§goto(addr206);
                                 }
                              }
                              §§goto(addr192);
                           }
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr206);
               }
               §§goto(addr145);
            }
            §§goto(addr155);
         }
         §§goto(addr181);
      }
   }
}
