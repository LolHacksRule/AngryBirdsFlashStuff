package § C§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §>-§.§6H§;
   import §[v§.§'4§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#y§ extends §-§
   {
      
      public static const §?B§:String = "LevelEndEagleState";
      
      private static const §-!5§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §#y§)
         {
            §?B§ = "LevelEndEagleState";
         }
         do
         {
            §-!5§ = "ScoreLoopCountChannel";
         }
         while(!(_loc1_ || §#y§));
         
      }
      
      private var §%!2§:§?A§;
      
      private var §^!D§:§6H§;
      
      public var mEagleScoreCounter:Number;
      
      private var §-!+§:Number;
      
      private var §&X§:int;
      
      public function §#y§(param1:Boolean = false, param2:String = "LevelEndEagleState")
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            loop0:
            while(true)
            {
               §,R§ = new §#H§(this);
               addr94:
               while(true)
               {
                  §,R§.init(§set §.§&!1§.Views.View_LevelEndEagle[0]);
                  continue loop0;
               }
            }
         }
         §§goto(addr87);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super.activate();
         this.§^!D§ = new §6H§(0,0,0,0);
         §,R§.movieClip.addChildAt(this.§^!D§,§,R§.movieClip.numChildren - 1);
         (§,R§.getItemByName("MovieClip_EagleMeterEmpty") as §=!=§).setVisibility(true);
         (§,R§.getItemByName("MovieClip_EagleMeterFill") as §=!=§).setVisibility(true);
         while(true)
         {
            while(true)
            {
               §@6§.playSound("LevelCompletedTheme1");
               do
               {
                  this.§^!D§.§@2§(0.7);
               }
               while(!_loc3_);
               
               if(!(_loc3_ || _loc1_))
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(§[o§.controller.getEagleScore());
               if(!_loc4_)
               {
                  §§push(int(§§pop()));
               }
               var _loc1_:* = §§pop();
               if(_loc3_ || _loc2_)
               {
                  this.§&X§ = AngryBirdsFP11.§64§.§!!@§(§0$§.§[C§);
               }
               var _loc2_:* = _loc1_ > this.§&X§;
               if(_loc2_)
               {
                  while(true)
                  {
                     this.§;z§(_loc1_);
                  }
                  addr203:
               }
               loop4:
               while(true)
               {
                  (§,R§.getItemByName("TextField_EaglePercentage") as §'4§).§8?§.text = _loc1_ + "%";
                  §@6§.playSound("Hiscore_Count",§-!5§,100);
                  §§push(this);
                  §§push(§";§.§[8§);
                  §§push(this);
                  §§push({"mEagleScoreCounter":_loc1_});
                  §§push({"mEagleScoreCounter":0});
                  §§push(_loc1_ / 100);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * 4);
                  }
                  §§pop().§%!2§ = §§pop().§6!$§(§§pop(),§§pop(),§§pop(),§§pop());
                  do
                  {
                     §§push(this.§%!2§);
                     loop6:
                     while(true)
                     {
                        §§pop().onComplete = this.§-!3§;
                        addr148:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              continue loop6;
                           }
                           continue loop4;
                        }
                     }
                  }
                  while(!(_loc3_ || _loc2_));
                  
                  return;
               }
            }
         }
      }
      
      protected function §;z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            AngryBirdsFP11.§64§.§=+§(§0$§.§[C§,param1);
         }
      }
      
      protected function §-!3§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GlowFilter = null;
         if(!(_loc2_ && _loc1_))
         {
            §@6§.§!>§(§-!5§);
            if(_loc3_ || _loc1_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc3_)
                  {
                     addr53:
                     §@6§.playSound("Hiscore_Badge",§-!5§);
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     addr57:
                     if(_loc3_)
                     {
                        (§,R§.getItemByName("MovieClip_EagleMeterEffect") as §=!=§).setVisibility(true);
                        if(!_loc2_)
                        {
                           (§,R§.getItemByName("MovieClip_EagleMeterFill") as §=!=§).mClip.filters = [_loc1_];
                        }
                     }
                  }
                  §§goto(addr57);
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr53);
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
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() == §-§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(int(this.mEagleScoreCounter) > this.§&X§)
                     {
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              (§,R§.getItemByName("TextField_EaglePercentage") as §'4§).§8?§.text = int(this.mEagleScoreCounter) + "%";
                              break;
                           }
                        }
                        break;
                     }
                     addr56:
                     (§,R§.getItemByName("TextField_EaglePercentage") as §'4§).§8?§.text = int(this.§&X§) + "%";
                     while(true)
                     {
                        if(_loc4_)
                        {
                           break loop0;
                        }
                        if(!(_loc4_ && this))
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr146);
                  }
                  (§,R§.getItemByName("TextField_EaglePercentageEffects") as §'4§).§8?§.text = int(this.mEagleScoreCounter) + "%";
                  §§goto(addr56);
                  addr136:
               }
               return _loc2_;
            }
         }
         §§goto(addr136);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.deActivate();
         loop0:
         while(true)
         {
            §§push(this.§^!D§);
            while(§§pop())
            {
               continue loop0;
               if(§,R§.movieClip.contains(this.§^!D§))
               {
                  §,R§.movieClip.removeChild(this.§^!D§);
               }
               §§push(this.§^!D§);
               if(_loc2_)
               {
                  §§pop().clean();
                  this.§^!D§ = null;
                  break;
               }
            }
            §@6§.§!>§(§-!5§);
            this.mEagleScoreCounter = 0;
            loop2:
            while(true)
            {
               §§push(this.§%!2§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§%!2§);
                        addr126:
                        while(true)
                        {
                           §§pop().stop();
                           this.§%!2§ = null;
                           addr112:
                           while(true)
                           {
                           }
                        }
                     }
                     addr124:
                  }
                  loop4:
                  while(true)
                  {
                     (§,R§.getItemByName("MovieClip_EagleMeterFill") as §=!=§).mClip.filters = [];
                     loop5:
                     while(!_loc1_)
                     {
                        (§,R§.getItemByName("MovieClip_EagleMeterEffect") as §=!=§).setVisibility(false);
                        loop6:
                        while(true)
                        {
                           (§,R§.getItemByName("Button_Menu") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           (§,R§.getItemByName("Button_Replay") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           while(true)
                           {
                              if(_loc1_ && this)
                              {
                                 continue loop6;
                              }
                              if(!_loc2_)
                              {
                                 continue loop5;
                              }
                              if(!(_loc2_ || this))
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr124);
                           }
                           continue loop4;
                        }
                     }
                     continue loop2;
                  }
               }
               §§goto(addr126);
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param1))
         {
            §§push("NEXT_LEVEL");
            if(_loc6_)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && param2))
                     {
                        §§push(0);
                        if(_loc5_ && param3)
                        {
                        }
                     }
                     else
                     {
                        addr169:
                        §§push(2);
                        if(_loc5_ && param1)
                        {
                        }
                     }
                     §§goto(addr189);
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc6_)
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           addr128:
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_)
                              {
                                 §§push(1);
                                 if(_loc5_ && param2)
                                 {
                                 }
                                 §§goto(addr189);
                              }
                              else
                              {
                                 §§goto(addr169);
                              }
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc6_)
                              {
                                 addr143:
                                 §§push(_loc4_);
                                 if(!(_loc5_ && param3))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          §§goto(addr169);
                                       }
                                    }
                                    else
                                    {
                                       addr180:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr189:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §7!6§.§2v§();
                                                mNextState = StateCutScene.§?B§;
                                                break;
                                                addr76:
                                             case 1:
                                                §7!6§.§<!G§();
                                                mNextState = §7!6§.§?B§;
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr76);
                                                break;
                                             case 2:
                                                §@6§.§&t§();
                                                addr33:
                                                mNextState = §4t§.§?B§;
                                                if(_loc6_ || param3)
                                                {
                                                   break;
                                                }
                                                break;
                                                addr51:
                                             case 3:
                                                AngryBirdsFP11.§?L§.§,!!§();
                                                if(!(_loc5_ && param3))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr51);
                                                }
                                                §§goto(addr33);
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr189);
                                    §§goto(addr189);
                                 }
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr143);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr143);
         }
         §§goto(addr169);
      }
   }
}
