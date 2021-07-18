package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<!]§.§]!v§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §+"!§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelEndEagleState";
      
      private static const §]!9§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §+"!§))
         {
            §%!Q§ = "LevelEndEagleState";
            do
            {
               §]!9§ = "ScoreLoopCountChannel";
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private var §&!i§:§=!r§;
      
      private var §<E§:§]!v§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §#!P§:Number;
      
      protected var §=!$§:int;
      
      public function §+"!§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
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
            loop0:
            while(true)
            {
               §`!v§ = new §>!V§(this);
               while(true)
               {
                  §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndEagle[0]);
                  while(_loc1_)
                  {
                     this.§#!P§ = (§`!v§.getItemByName("MovieClip_EagleMeterFill") as §@u§).width;
                     loop3:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           §0"#§.§4!m§(§]!9§,1,1);
                           if(!(_loc2_ && _loc1_))
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
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
               this.§<E§ = new §]!v§(0,0,0,0);
               while(_loc3_)
               {
                  §`!v§.movieClip.addChildAt(this.§<E§,§`!v§.movieClip.numChildren - 1);
                  while(_loc3_)
                  {
                     §`!v§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
                     addr53:
                     if(_loc3_ || this)
                     {
                        loop5:
                        do
                        {
                           §0"#§.§9"2§("LevelCompletedTheme1");
                           while(_loc3_)
                           {
                              this.§<E§.§[!r§(0.7);
                              if(!(_loc4_ && _loc1_))
                              {
                                 continue loop5;
                              }
                           }
                           addr46:
                           addr67:
                           while(!(_loc4_ && _loc1_))
                           {
                              §§goto(addr53);
                           }
                           while(true)
                           {
                              §`!v§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
                              §§goto(addr46);
                           }
                        }
                        while(false);
                        
                        §§push(§'_§.§=R§.getEagleScore());
                        if(!_loc4_)
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc1_:* = §§pop();
                        if(!(_loc4_ && _loc3_))
                        {
                           this.§=!$§ = AngryBirdsFP11.§>!7§.§6!G§(§`!r§.§0B§);
                        }
                     }
                     continue;
                     var _loc2_:* = _loc1_ > this.§=!$§;
                     if(!_loc4_)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§["'§(_loc1_);
                              addr235:
                              while(true)
                              {
                              }
                              addr212:
                              if(_loc4_ && _loc2_)
                              {
                                 continue;
                              }
                              §0"#§.§9"2§("Hiscore_Count",§]!9§,100);
                              while(true)
                              {
                                 §§push(this);
                                 §§push(§7I§.§[E§);
                                 §§push(this);
                                 §§push({"mEagleScoreCounter":_loc1_});
                                 §§push({"mEagleScoreCounter":0});
                                 §§push(_loc1_ / 100);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() * 4);
                                 }
                                 §§pop().§&!i§ = §§pop().§ ";§(§§pop(),§§pop(),§§pop(),§§pop());
                                 §§goto(addr186);
                              }
                           }
                        }
                        while(true)
                        {
                           (§`!v§.getItemByName("TextField_EaglePercentage") as §!!]§).§<!g§.text = _loc1_ + "%";
                           §§goto(addr205);
                           §§goto(addr235);
                        }
                     }
                     addr186:
                     while(true)
                     {
                        §§push(this.§&!i§);
                        loop13:
                        while(true)
                        {
                           §§pop().onComplete = this.§1!y§;
                           addr163:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop13;
                              }
                              addr205:
                              while(_loc3_ || _loc2_)
                              {
                                 §§goto(addr212);
                              }
                              §§goto(addr235);
                           }
                           continue loop11;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      protected function §["'§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            AngryBirdsFP11.§>!7§.§;"6§(§`!r§.§0B§,param1);
         }
      }
      
      protected function §1!y§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GlowFilter = null;
         if(_loc3_ || _loc1_)
         {
            §0"#§.§<"0§(§]!9§);
            if(_loc3_)
            {
               §§goto(addr32);
            }
            §§goto(addr57);
         }
         addr32:
         if(this.mEagleScoreCounter == 100)
         {
            if(!(_loc2_ && this))
            {
               §0"#§.§9"2§("Hiscore_Badge",§]!9§);
               addr57:
               _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
               if(_loc3_)
               {
                  (§`!v§.getItemByName("MovieClip_EagleMeterEffect") as §@u§).setVisibility(true);
                  if(!(_loc2_ && this))
                  {
                     (§`!v§.getItemByName("MovieClip_EagleMeterFill") as §@u§).mClip.filters = [_loc1_];
                  }
               }
            }
            §§goto(addr57);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc5_ && param1))
            {
               if(§§pop() == §'B§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(int(this.mEagleScoreCounter) <= this.§=!$§)
                  {
                     (§`!v§.getItemByName("TextField_EaglePercentage") as §!!]§).§<!g§.text = int(this.§=!$§) + "%";
                     while(_loc4_ || this)
                     {
                        if(_loc5_)
                        {
                           break loop0;
                        }
                        if(!_loc4_)
                        {
                           return _loc2_;
                        }
                        addr154:
                        (§`!v§.getItemByName("TextField_EaglePercentageEffects") as §!!]§).§<!g§.text = int(this.§=!$§) + "%";
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                        if(!(_loc5_ && param1))
                        {
                           if(_loc4_ || param1)
                           {
                              §§goto(addr62);
                           }
                           continue loop0;
                        }
                        addr108:
                        §§goto(addr64);
                     }
                     (§`!v§.getItemByName("TextField_EaglePercentageEffects") as §!!]§).§<!g§.text = int(this.mEagleScoreCounter) + "%";
                     §§goto(addr108);
                  }
                  (§`!v§.getItemByName("TextField_EaglePercentage") as §!!]§).§<!g§.text = int(this.mEagleScoreCounter) + "%";
                  §§goto(addr142);
               }
            }
            §§goto(addr154);
         }
         addr62:
         if(false)
         {
            addr64:
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§#!P§ * (this.mEagleScoreCounter / 100),(§`!v§.getItemByName("MovieClip_EagleMeterFill") as §@u§).height);
         if(!_loc5_)
         {
            (§`!v§.getItemByName("MovieClip_EagleMeterFill") as §@u§).mClip.scrollRect = _loc3_;
            loop2:
            do
            {
               (§`!v§.getItemByName("MovieClip_EagleMeterEffect") as §@u§).mClip.rotation = (§`!v§.getItemByName("MovieClip_EagleMeterEffect") as §@u§).mClip.rotation + param1 / 20;
               while(mNextState.length > 0)
               {
                  if(_loc4_)
                  {
                     §'_§.§=M§.clearLevel();
                  }
                  if(_loc4_ || this)
                  {
                     continue loop2;
                  }
               }
            }
            while(_loc5_);
            
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§<E§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §0"#§.§<"0§(§]!9§);
                        while(!_loc2_)
                        {
                           this.mEagleScoreCounter = 0;
                           loop9:
                           while(true)
                           {
                              §§push(this.§&!i§);
                              if(_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc1_ || this))
                                    {
                                       continue;
                                    }
                                    §§push(this.§&!i§);
                                 }
                                 else
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       (§`!v§.getItemByName("MovieClip_EagleMeterFill") as §@u§).mClip.filters = [];
                                       do
                                       {
                                          (§`!v§.getItemByName("MovieClip_EagleMeterEffect") as §@u§).setVisibility(false);
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc2_ && _loc1_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(_loc1_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   addr208:
                                                   while(true)
                                                   {
                                                      if(!§`!v§.movieClip.contains(this.§<E§))
                                                      {
                                                         break loop11;
                                                      }
                                                      while(true)
                                                      {
                                                         §`!v§.movieClip.removeChild(this.§<E§);
                                                      }
                                                   }
                                                }
                                                continue loop1;
                                                addr132:
                                             }
                                             addr100:
                                             if(_loc1_ || _loc1_)
                                             {
                                                (§`!v§.getItemByName("Button_Menu") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                continue;
                                             }
                                             addr194:
                                             while(_loc1_)
                                             {
                                                continue loop0;
                                                §§goto(addr100);
                                             }
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                          }
                                       }
                                       while(_loc2_ && _loc2_);
                                       
                                       return;
                                    }
                                 }
                              }
                              §§pop().stop();
                           }
                        }
                        addr182:
                        while(true)
                        {
                           continue loop7;
                        }
                     }
                  }
                  §§goto(addr208);
               }
            }
         }
         while(true)
         {
            this.§<E§ = null;
            §§goto(addr182);
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!_loc5_)
               {
                  §§push(0);
                  if(!(_loc6_ || param3))
                  {
                     addr175:
                  }
               }
               else
               {
                  addr141:
                  §§push(1);
                  if(!_loc6_)
                  {
                  }
               }
            }
            else if("REPLAY" === _loc4_)
            {
               if(_loc6_ || param3)
               {
                  §§goto(addr141);
               }
               else
               {
                  addr155:
                  §§push(2);
                  if(_loc5_)
                  {
                     §§goto(addr175);
                  }
               }
            }
            else
            {
               if("MENU" === _loc4_)
               {
                  if(_loc6_ || param1)
                  {
                     §§goto(addr155);
                  }
               }
               else if("FULLSCREEN_BUTTON" !== _loc4_)
               {
                  addr180:
                  switch(§§pop())
                  {
                     case 0:
                        §`!;§.§;c§();
                        mNextState = StateCutScene.§%!Q§;
                        break;
                        addr109:
                        addr104:
                     case 1:
                        §`!;§.§%P§();
                        if(!_loc5_)
                        {
                           mNextState = §`!;§.§%!Q§;
                           if(!(_loc5_ && param1))
                           {
                              if(!(_loc5_ && param3))
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    break;
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr104);
                           }
                           break;
                        }
                        break;
                     case 2:
                        §0"#§.§4"#§();
                        loop0:
                        while(true)
                        {
                           addr35:
                           while(true)
                           {
                              mNextState = this.§6!u§();
                              continue loop0;
                           }
                        }
                        break;
                     case 3:
                        AngryBirdsFP11.§@"7§.§>!5§();
                        if(!_loc5_)
                        {
                           if(!(_loc5_ && param3))
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr35);
                           }
                           §§goto(addr40);
                        }
                  }
                  return;
                  §§push(4);
               }
               §§goto(addr180);
               if(_loc6_)
               {
                  §§goto(addr175);
               }
            }
            §§goto(addr180);
         }
         §§goto(addr141);
      }
      
      public function §6!u§() : String
      {
         return §1!i§.§%!Q§;
      }
   }
}
