package §2!U§
{
   import §"!i§.LevelManager;
   import §2y§.§54§;
   import §2y§.§7!p§;
   import §2y§.§[!i§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>!q§.§!^§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §0!>§ extends §9![§
   {
      
      public static const §'!q§:String = "LevelEndEagleState";
      
      private static const §[!<§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'!q§ = "LevelEndEagleState";
         }
         do
         {
            §[!<§ = "ScoreLoopCountChannel";
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §3!]§:§^v§;
      
      private var §`!%§:§!^§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §-!N§:Number;
      
      protected var §=!G§:int;
      
      public function §0!>§(param1:Boolean = false, param2:String = "LevelEndEagleState")
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
         if(!_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               §'!Q§ = new §&!G§(this);
               while(true)
               {
                  §'!Q§.init(§2!z§.§ _§.Views.View_LevelEndEagle[0]);
                  while(_loc1_ || this)
                  {
                     this.§-!N§ = (§'!Q§.getItemByName("MovieClip_EagleMeterFill") as §7!p§).width;
                     loop3:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           §-!Q§.§"3§(§[!<§,1,1);
                           if(_loc1_)
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
         §§goto(addr70);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§`!%§ = new §!^§(0,0,0,0);
               while(true)
               {
                  §'!Q§.movieClip.addChildAt(this.§`!%§,§'!Q§.movieClip.numChildren - 1);
                  continue loop0;
                  loop5:
                  while(_loc4_ || _loc1_)
                  {
                     while(true)
                     {
                        §-!Q§.§#3§("LevelCompletedTheme1");
                        do
                        {
                           this.§`!%§.§^p§(0.7);
                        }
                        while(_loc3_);
                        
                        if(!_loc3_)
                        {
                           continue;
                        }
                        continue loop5;
                     }
                     while(_loc4_)
                     {
                        §'!Q§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
                        continue loop5;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §'!Q§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
            §§goto(addr63);
         }
      }
      
      protected function §5!O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            AngryBirdsFP11.sUserProgress.§3!L§(LevelManager.§"L§,param1);
         }
      }
      
      protected function §-!T§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(!_loc3_)
         {
            §-!Q§.§^B§(§[!<§);
            if(!(_loc3_ && _loc1_))
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc2_)
                  {
                     addr47:
                     §-!Q§.§#3§("Hiscore_Badge",§[!<§);
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     addr51:
                     if(_loc2_ || _loc1_)
                     {
                        (§'!Q§.getItemByName("MovieClip_EagleMeterEffect") as §7!p§).setVisibility(true);
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr96);
                     }
                     (§'!Q§.getItemByName("MovieClip_EagleMeterFill") as §7!p§).mClip.filters = [_loc1_];
                  }
                  §§goto(addr51);
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
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() == §9![§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(int(this.mEagleScoreCounter) > this.§=!G§)
                     {
                        while(true)
                        {
                           (§'!Q§.getItemByName("TextField_EaglePercentage") as §54§).§5!B§.text = int(this.mEagleScoreCounter) + "%";
                           addr138:
                           while(true)
                           {
                              (§'!Q§.getItemByName("TextField_EaglePercentageEffects") as §54§).§5!B§.text = int(this.mEagleScoreCounter) + "%";
                              break loop0;
                           }
                        }
                        addr124:
                     }
                     else
                     {
                        (§'!Q§.getItemByName("TextField_EaglePercentage") as §54§).§5!B§.text = int(this.§=!G§) + "%";
                        while(!(_loc4_ && _loc2_))
                        {
                           (§'!Q§.getItemByName("TextField_EaglePercentageEffects") as §54§).§5!B§.text = int(this.§=!G§) + "%";
                           if(!_loc4_)
                           {
                              if(_loc4_)
                              {
                                 break loop0;
                              }
                              if(!_loc4_)
                              {
                                 if(false)
                                 {
                                    addr55:
                                 }
                                 var _loc3_:Rectangle = new Rectangle(0,0,this.§-!N§ * (this.mEagleScoreCounter / 100),(§'!Q§.getItemByName("MovieClip_EagleMeterFill") as §7!p§).height);
                                 if(_loc5_ || this)
                                 {
                                    (§'!Q§.getItemByName("MovieClip_EagleMeterFill") as §7!p§).mClip.scrollRect = _loc3_;
                                    do
                                    {
                                       (§'!Q§.getItemByName("MovieClip_EagleMeterEffect") as §7!p§).mClip.rotation = (§'!Q§.getItemByName("MovieClip_EagleMeterEffect") as §7!p§).mClip.rotation + param1 / 20;
                                    }
                                    while(!(_loc5_ || this));
                                    
                                    if(mNextState.length > 0)
                                    {
                                       §,!s§.§=!I§.clearLevel();
                                       return §9![§.STATE_STATUS_COMPLETED;
                                    }
                                 }
                                 return §9![§.STATE_STATUS_RUNNING;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        break;
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr55);
               }
               return _loc2_;
            }
         }
         §§goto(addr138);
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
               §§push(this.§`!%§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        if(§'!Q§.movieClip.contains(this.§`!%§))
                        {
                           while(true)
                           {
                              §'!Q§.movieClip.removeChild(this.§`!%§);
                              addr234:
                              while(true)
                              {
                              }
                           }
                           addr229:
                        }
                        while(true)
                        {
                           §§push(this.§`!%§);
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§pop().clean();
                           while(!_loc2_)
                           {
                              this.§`!%§ = null;
                              while(!(_loc2_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    §-!Q§.§^B§(§[!<§);
                                    loop8:
                                    while(true)
                                    {
                                       this.mEagleScoreCounter = 0;
                                       addr180:
                                       while(!_loc2_)
                                       {
                                          §§push(this.§3!]§);
                                          if(_loc1_ || _loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc1_ || _loc1_)
                                                {
                                                   addr174:
                                                   this.§3!]§.stop();
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   (§'!Q§.getItemByName("MovieClip_EagleMeterFill") as §7!p§).mClip.filters = [];
                                                   addr134:
                                                   while(true)
                                                   {
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         (§'!Q§.getItemByName("MovieClip_EagleMeterEffect") as §7!p§).setVisibility(false);
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                addr125:
                                             }
                                             while(true)
                                             {
                                                this.§3!]§ = null;
                                                continue loop0;
                                                §§goto(addr134);
                                             }
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr234);
                                    }
                                 }
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 loop15:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr82:
                                       if(_loc1_ || this)
                                       {
                                          if(_loc1_)
                                          {
                                             (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                             while(!_loc2_)
                                             {
                                                (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                if(_loc1_ || _loc2_)
                                                {
                                                   continue loop15;
                                                }
                                             }
                                             §§goto(addr100);
                                          }
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr180);
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr183);
               }
            }
         }
         §§goto(addr234);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            §§push("NEXT_LEVEL");
            if(!(_loc5_ && param1))
            {
               §§push(_loc4_);
               if(_loc6_ || param3)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || this)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr189:
                        §§push(3);
                        if(!(_loc5_ && param2))
                        {
                           addr197:
                        }
                     }
                     §§goto(addr202);
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!(_loc5_ && param3))
                     {
                        addr138:
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_ || param1)
                              {
                                 §§push(1);
                                 if(!_loc6_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr177:
                                 §§push(2);
                                 if(_loc5_ && param3)
                                 {
                                    §§goto(addr197);
                                 }
                              }
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    addr159:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          §§goto(addr177);
                                       }
                                       else
                                       {
                                          §§goto(addr189);
                                       }
                                    }
                                    else
                                    {
                                       addr188:
                                       if("FULLSCREEN_BUTTON" === _loc4_)
                                       {
                                          §§goto(addr189);
                                       }
                                       else
                                       {
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                              }
                              §§goto(addr188);
                           }
                           addr202:
                           switch(§§pop())
                           {
                              case 0:
                                 §3!;§.§9!G§();
                                 mNextState = StateCutScene.§'!q§;
                                 addr79:
                                 break;
                                 addr79:
                                 addr84:
                              case 1:
                                 §3!;§.§0!1§();
                                 addr71:
                                 if(_loc6_)
                                 {
                                    mNextState = §3!;§.§'!q§;
                                    break;
                                    addr65:
                                 }
                                 else
                                 {
                                    §§goto(addr79);
                                 }
                                 break;
                              case 2:
                                 §-!Q§.§4!$§();
                                 if(_loc6_ || this)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr37:
                                       mNextState = this.§1!H§();
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§goto(addr84);
                                    }
                                    else
                                    {
                                       §§goto(addr65);
                                    }
                                 }
                                 break;
                              case 3:
                                 AngryBirdsFP11.§'!g§.§]8§();
                                 if(_loc6_ || param3)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr37);
                                       }
                                       else
                                       {
                                          §§goto(addr71);
                                       }
                                       §§goto(addr79);
                                    }
                                    §§goto(addr37);
                                 }
                           }
                           return;
                        }
                     }
                     §§goto(addr188);
                  }
               }
               §§goto(addr159);
            }
            §§goto(addr138);
         }
         §§goto(addr177);
      }
      
      public function §1!H§() : String
      {
         return §2!=§.§'!q§;
      }
   }
}
