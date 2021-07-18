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
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §[!w§.§4!i§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §@!m§ extends §5y§
   {
      
      public static const §'=§:String = "LevelEndEagleState";
      
      private static const §2!_§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'=§ = "LevelEndEagleState";
         }
         do
         {
            §2!_§ = "ScoreLoopCountChannel";
         }
         while(_loc1_);
         
      }
      
      private var §?!=§:§3^§;
      
      private var §?!+§:§4!i§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §'!8§:Number;
      
      protected var §?Q§:int;
      
      public function §@!m§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               §?E§ = new §'s§(this);
               while(true)
               {
                  §?E§.init(§`7§.§>"?§.Views.View_LevelEndEagle[0]);
                  while(!_loc1_)
                  {
                     this.§'!8§ = (§?E§.getItemByName("MovieClip_EagleMeterFill") as §%+§).width;
                     while(_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §5!U§.§2R§(§2!_§,1,1);
            if(!(_loc1_ && this))
            {
               break;
            }
            §§goto(addr62);
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            super.activate();
            while(true)
            {
               this.§?!+§ = new §4!i§(0,0,0,0);
               loop1:
               while(!(_loc4_ && _loc2_))
               {
                  §?E§.movieClip.addChildAt(this.§?!+§,§?E§.movieClip.numChildren - 1);
                  loop2:
                  while(true)
                  {
                     §?E§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
                     loop3:
                     while(true)
                     {
                        §?E§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
                        loop4:
                        for(; !_loc4_; while(true)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              if(_loc3_)
                              {
                                 this.§?!+§.§>=§(0.7);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                           continue loop4;
                        },while(false)
                        {
                           §§goto(addr33);
                        },§§push(§=!X§.§#H§.getEagleScore()),if(!_loc4_)
                        {
                           §§push(int(§§pop()));
                        },var _loc1_:* = §§pop(),if(!_loc4_)
                        {
                           this.§?Q§ = AngryBirdsFP11.§>" §.§2?§(§3!w§.§%n§);
                        },var _loc2_:* = _loc1_ > this.§?Q§,if(_loc3_)
                        {
                           if(_loc2_)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 this.§5I§(_loc1_);
                              }
                              while(true)
                              {
                                 addr158:
                                 if(_loc4_ && this)
                                 {
                                    continue;
                                 }
                                 return;
                                 addr165:
                              }
                              addr235:
                           }
                           while(true)
                           {
                              (§?E§.getItemByName("TextField_EaglePercentage") as §`!<§).§&!w§.text = _loc1_ + "%";
                              while(true)
                              {
                                 §5!U§.playSound("Hiscore_Count",§2!_§,100);
                                 addr151:
                                 if(!(_loc3_ || this))
                                 {
                                    continue;
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr235);
                           }
                        },while(true)
                        {
                           §§push(this);
                           §§push(§7!E§.§2=§);
                           §§push(this);
                           §§push({"mEagleScoreCounter":_loc1_});
                           §§push({"mEagleScoreCounter":0});
                           §§push(_loc1_ / 100);
                           if(_loc3_)
                           {
                              §§push(§§pop() * 4);
                           }
                           §§pop().§?!=§ = §§pop().§<!C§(§§pop(),§§pop(),§§pop(),§§pop());
                           loop12:
                           do
                           {
                              §§push(this.§?!=§);
                              while(true)
                              {
                                 §§pop().onComplete = this.§[!R§;
                                 while(true)
                                 {
                                    §§push(this.§?!=§);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§pop().play();
                                    if(_loc3_)
                                    {
                                       continue loop12;
                                    }
                                 }
                              }
                           }
                           while(_loc4_ && this);
                           
                           if(!_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr151);
                        },§§goto(addr165))
                        {
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              §5!U§.playSound("LevelCompletedTheme1");
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr31);
      }
      
      protected function §5I§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            AngryBirdsFP11.§>" §.each(§3!w§.§%n§,param1);
         }
      }
      
      protected function §[!R§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(_loc2_)
         {
            §5!U§.§+!7§(§2!_§);
            if(!(_loc3_ && _loc2_))
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc2_ || _loc1_)
                  {
                     §5!U§.playSound("Hiscore_Badge",§2!_§);
                     addr56:
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     if(!(_loc3_ && this))
                     {
                        (§?E§.getItemByName("MovieClip_EagleMeterEffect") as §%+§).setVisibility(true);
                        if(!(_loc3_ && _loc1_))
                        {
                           (§?E§.getItemByName("MovieClip_EagleMeterFill") as §%+§).mClip.filters = [_loc1_];
                        }
                     }
                     addr42:
                  }
                  §§goto(addr56);
               }
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr42);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc5_ && _loc2_))
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
                  loop0:
                  while(int(this.mEagleScoreCounter) <= this.§?Q§)
                  {
                     (§?E§.getItemByName("TextField_EaglePercentage") as §`!<§).§&!w§.text = int(this.§?Q§) + "%";
                     loop1:
                     for(; _loc4_ || param1; (§?E§.getItemByName("TextField_EaglePercentageEffects") as §`!<§).§&!w§.text = int(this.§?Q§) + "%",if(!_loc4_)
                     {
                        continue;
                     },if(_loc4_)
                     {
                        if(false)
                        {
                           addr52:
                        }
                        var _loc3_:Rectangle = new Rectangle(0,0,this.§'!8§ * (this.mEagleScoreCounter / 100),(§?E§.getItemByName("MovieClip_EagleMeterFill") as §%+§).height);
                        if(_loc4_ || this)
                        {
                           (§?E§.getItemByName("MovieClip_EagleMeterFill") as §%+§).mClip.scrollRect = _loc3_;
                           do
                           {
                              (§?E§.getItemByName("MovieClip_EagleMeterEffect") as §%+§).mClip.rotation = (§?E§.getItemByName("MovieClip_EagleMeterEffect") as §%+§).mClip.rotation + param1 / 20;
                              while(true)
                              {
                                 if(mNextState.length <= 0)
                                 {
                                    return §5y§.STATE_STATUS_RUNNING;
                                 }
                                 if(!(_loc4_ || this))
                                 {
                                    continue;
                                 }
                              }
                           }
                           while(_loc5_ && this);
                           
                           return §5y§.STATE_STATUS_COMPLETED;
                        }
                        while(true)
                        {
                           §=!X§.§!'§.clearLevel();
                           §§goto(addr207);
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           (§?E§.getItemByName("TextField_EaglePercentageEffects") as §`!<§).§&!w§.text = int(this.mEagleScoreCounter) + "%";
                           break loop1;
                        }
                        addr103:
                        addr137:
                     },§§goto(addr52))
                     {
                        if(_loc5_ && _loc2_)
                        {
                           continue loop0;
                        }
                        if(_loc4_)
                        {
                           continue;
                        }
                     }
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        §§goto(addr103);
                     }
                  }
                  while(true)
                  {
                     (§?E§.getItemByName("TextField_EaglePercentage") as §`!<§).§&!w§.text = int(this.mEagleScoreCounter) + "%";
                     §§goto(addr137);
                  }
                  addr113:
               }
               return _loc2_;
            }
         }
         §§goto(addr113);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            while(true)
            {
               §§push(this.§?!+§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §5!U§.§+!7§(§2!_§);
                        loop9:
                        while(true)
                        {
                           this.mEagleScoreCounter = 0;
                           while(true)
                           {
                              §§push(this.§?!=§);
                              if(_loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       (§?E§.getItemByName("MovieClip_EagleMeterFill") as §%+§).mClip.filters = [];
                                       while(true)
                                       {
                                          (§?E§.getItemByName("MovieClip_EagleMeterEffect") as §%+§).setVisibility(false);
                                          loop14:
                                          while(true)
                                          {
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                if(!(_loc1_ && this))
                                                {
                                                   addr124:
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      break;
                                                      addr82:
                                                   }
                                                   (§?E§.getItemByName("Button_Menu") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                   while(_loc2_)
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         (§?E§.getItemByName("Button_Replay") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                         continue loop14;
                                                      }
                                                      addr225:
                                                      while(true)
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                                addr170:
                                                while(true)
                                                {
                                                   this.§?!=§ = null;
                                                }
                                                continue loop12;
                                             }
                                             addr146:
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   continue loop12;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop8;
                                             }
                                             §§goto(addr220);
                                             §§goto(addr124);
                                          }
                                          §§goto(addr225);
                                       }
                                    }
                                    continue;
                                    addr132:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§?!=§);
                                    §§goto(addr146);
                                 }
                              }
                              while(true)
                              {
                                 §§pop().stop();
                                 §§goto(addr170);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr204);
               }
            }
         }
         §§goto(addr46);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("NEXT_LEVEL" !== _loc4_)
            {
               if("REPLAY" === _loc4_)
               {
                  if(_loc5_ || param1)
                  {
                     addr130:
                     §§push(1);
                     if(_loc5_ || this)
                     {
                     }
                  }
                  else
                  {
                     addr144:
                     §§push(2);
                     if(!(_loc5_ || param1))
                     {
                        §§goto(addr174);
                     }
                  }
               }
               else
               {
                  if("MENU" === _loc4_)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr144);
                     }
                     else
                     {
                        §§goto(addr156);
                     }
                  }
                  else if("FULLSCREEN_BUTTON" === _loc4_)
                  {
                     §§goto(addr156);
                  }
                  else
                  {
                     §§push(4);
                  }
                  §§goto(addr156);
               }
               addr179:
               switch(§§pop())
               {
                  case 0:
                     §0!v§.§`" §();
                     mNextState = StateCutScene.§'=§;
                     break;
                     addr98:
                     addr83:
                  case 1:
                     §0!v§.§4[§();
                     mNextState = §0!v§.§'=§;
                     addr71:
                     break;
                     addr71:
                     addr77:
                  case 2:
                     §5!U§.§9&§();
                     if(!(_loc6_ && param1))
                     {
                        if(!(_loc6_ && param1))
                        {
                           if(_loc5_ || this)
                           {
                              if(_loc5_)
                              {
                                 addr29:
                                 mNextState = this.§0!c§();
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr71);
                              }
                              else
                              {
                                 §§goto(addr98);
                              }
                           }
                           §§goto(addr83);
                        }
                        else
                        {
                           §§goto(addr77);
                        }
                     }
                     break;
                  case 3:
                     AngryBirdsFP11.§%d§.§9+§();
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr29);
                        }
                        §§goto(addr29);
                     }
               }
               return;
            }
            if(_loc5_ || param3)
            {
               §§push(0);
               if(!_loc5_)
               {
                  addr174:
               }
            }
            else
            {
               addr156:
               §§push(3);
               if(_loc5_ || param2)
               {
                  §§goto(addr174);
               }
            }
            §§goto(addr179);
            §§goto(addr156);
         }
         §§goto(addr130);
      }
      
      public function §0!c§() : String
      {
         return §7B§.§'=§;
      }
   }
}
