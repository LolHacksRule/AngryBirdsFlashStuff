package § !k§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §06§.§9!b§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§&!G§;
   import §`M§.§,c§;
   import §`M§.§3!@§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §'!4§ extends §+_§
   {
      
      public static const §3F§:String = "LevelEndEagleState";
      
      private static const §5!^§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §'!4§))
         {
            §3F§ = "LevelEndEagleState";
         }
         do
         {
            §5!^§ = "ScoreLoopCountChannel";
         }
         while(_loc2_ && §'!4§);
         
      }
      
      private var §"Y§:§4F§;
      
      private var §++§:§9!b§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §=!R§:Number;
      
      protected var §5!R§:int;
      
      public function §'!4§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
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
               §`-§ = new § C§(this);
               do
               {
                  §`-§.init(dynamic.§[6§.Views.View_LevelEndEagle[0]);
                  continue loop0;
               }
               while(_loc2_);
               
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.activate();
            while(true)
            {
               this.§++§ = new §9!b§(0,0,0,0);
               addr93:
               while(true)
               {
                  §`-§.movieClip.addChildAt(this.§++§,§`-§.movieClip.numChildren - 1);
               }
            }
            addr96:
         }
         while(true)
         {
            §`-§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
            while(!(_loc3_ && this))
            {
               §`-§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
               for(; _loc4_; while(true)
               {
                  §6!H§.playSound("LevelCompletedTheme1");
                  do
                  {
                     this.§++§.§&!f§(0.7);
                  }
                  while(!(_loc4_ || _loc2_));
                  
                  if(_loc3_ && _loc2_)
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     if(false)
                     {
                        continue;
                     }
                     §§push(§4!]§.§=`§.getEagleScore());
                     if(_loc4_ || this)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     if(!_loc3_)
                     {
                        this.§5!R§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§^!F§);
                     }
                     var _loc2_:* = _loc1_ > this.§5!R§;
                     if(_loc4_)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§0!L§(_loc1_);
                              addr236:
                              addr166:
                              while(true)
                              {
                              }
                              if(!(_loc4_ || _loc1_))
                              {
                                 continue;
                              }
                              §§push(this.§"Y§);
                              if(!_loc3_)
                              {
                                 §§pop().play();
                                 if(_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr236);
                                    }
                                    return;
                                    addr150:
                                 }
                                 loop14:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr166);
                                       }
                                       while(_loc4_ || _loc1_)
                                       {
                                          §§push(this);
                                          §§push(§5+§.§^Z§);
                                          §§push(this);
                                          §§push({"mEagleScoreCounter":_loc1_});
                                          §§push({"mEagleScoreCounter":0});
                                          §§push(_loc1_ / 100);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() * 4);
                                          }
                                          §§pop().§"Y§ = §§pop().§=!a§(§§pop(),§§pop(),§§pop(),§§pop());
                                       }
                                       while(true)
                                       {
                                          §6!H§.playSound("Hiscore_Count",§5!^§,100);
                                          §§goto(addr211);
                                       }
                                       addr211:
                                       addr230:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§"Y§);
                                       continue loop14;
                                    }
                                 }
                                 §§goto(addr236);
                                 addr157:
                              }
                              while(true)
                              {
                                 §§pop().onComplete = this.§]g§;
                                 §§goto(addr157);
                                 §§goto(addr173);
                              }
                              addr173:
                           }
                        }
                        while(true)
                        {
                           (§`-§.getItemByName("TextField_EaglePercentage") as §3!@§).§!!2§.text = _loc1_ + "%";
                           §§goto(addr230);
                           §§goto(addr236);
                        }
                     }
                     §§goto(addr150);
                  }
                  else
                  {
                     §§goto(addr93);
                  }
               })
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr96);
               }
            }
         }
      }
      
      protected function §0!L§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            AngryBirdsFP11.sUserProgress.§#]§(LevelManager.§^!F§,param1);
         }
      }
      
      protected function §]g§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GlowFilter = null;
         if(_loc3_ || _loc3_)
         {
            §6!H§.§1x§(§5!^§);
            if(!_loc2_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr53:
                     §6!H§.playSound("Hiscore_Badge",§5!^§);
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     addr57:
                     if(_loc3_ || _loc1_)
                     {
                        (§`-§.getItemByName("MovieClip_EagleMeterEffect") as §&!G§).setVisibility(true);
                        if(_loc2_)
                        {
                        }
                        §§goto(addr102);
                     }
                     (§`-§.getItemByName("MovieClip_EagleMeterFill") as §&!G§).mClip.filters = [_loc1_];
                  }
                  §§goto(addr57);
               }
               addr102:
               return;
            }
         }
         §§goto(addr53);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §+_§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(int(this.mEagleScoreCounter) <= this.§5!R§)
                     {
                        (§`-§.getItemByName("TextField_EaglePercentage") as §3!@§).§!!2§.text = int(this.§5!R§) + "%";
                        while(true)
                        {
                           if(_loc5_ || param1)
                           {
                              continue;
                           }
                        }
                        while(!(_loc4_ && param1))
                        {
                           (§`-§.getItemByName("TextField_EaglePercentageEffects") as §3!@§).§!!2§.text = int(this.mEagleScoreCounter) + "%";
                           §§goto(addr103);
                        }
                        addr161:
                        return _loc2_;
                        addr146:
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                     addr162:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  (§`-§.getItemByName("TextField_EaglePercentage") as §3!@§).§!!2§.text = int(this.mEagleScoreCounter) + "%";
               }
               §§goto(addr146);
            }
            §§goto(addr161);
         }
         §§goto(addr162);
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
               §§push(this.§++§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §6!H§.§1x§(§5!^§);
                        loop9:
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              this.mEagleScoreCounter = 0;
                              loop10:
                              while(true)
                              {
                                 §§push(this.§"Y§);
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(!§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          (§`-§.getItemByName("MovieClip_EagleMeterFill") as §&!G§).mClip.filters = [];
                                          while(true)
                                          {
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                continue loop0;
                                             }
                                             (§`-§.getItemByName("MovieClip_EagleMeterEffect") as §&!G§).setVisibility(false);
                                             loop13:
                                             while(true)
                                             {
                                                (§`-§.getItemByName("Button_Menu") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                loop14:
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      addr86:
                                                      if(!(_loc2_ && this))
                                                      {
                                                         (§`-§.getItemByName("Button_Replay") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                         continue;
                                                      }
                                                      addr204:
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            this.§++§ = null;
                                                            break loop14;
                                                         }
                                                         addr217:
                                                         while(true)
                                                         {
                                                            §`-§.movieClip.removeChild(this.§++§);
                                                            break loop6;
                                                         }
                                                         §§goto(addr86);
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop13;
                                                }
                                                continue loop8;
                                             }
                                          }
                                          addr134:
                                          while(true)
                                          {
                                             continue loop11;
                                          }
                                       }
                                    }
                                    §§goto(addr146);
                                 }
                                 while(true)
                                 {
                                    §§pop().stop();
                                    continue loop10;
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 if(!§`-§.movieClip.contains(this.§++§))
                                 {
                                    break loop9;
                                 }
                              }
                              addr211:
                           }
                           §§goto(addr217);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr211);
               }
            }
         }
         §§goto(addr146);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || this)
         {
            §§push("NEXT_LEVEL");
            if(_loc6_ || param2)
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           addr200:
                        }
                     }
                     else
                     {
                        addr192:
                        §§push(2);
                        if(_loc6_ || param1)
                        {
                           §§goto(addr200);
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!(_loc5_ && this))
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(!(_loc6_ || param2))
                                 {
                                    addr207:
                                 }
                                 §§goto(addr212);
                              }
                              else
                              {
                                 §§goto(addr192);
                              }
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc6_ || param3)
                              {
                                 addr171:
                                 §§push(_loc4_);
                                 if(_loc6_ || this)
                                 {
                                 }
                                 addr203:
                                 if(§§pop() === §§pop())
                                 {
                                    addr204:
                                    §§push(3);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr207);
                                    }
                                    §§goto(addr212);
                                 }
                                 else
                                 {
                                    addr212:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §%]§.§]!b§();
                                          if(!(_loc5_ && param2))
                                          {
                                             mNextState = StateCutScene.§3F§;
                                             break;
                                             addr87:
                                          }
                                          break;
                                       case 1:
                                          §%]§.§=>§();
                                          if(_loc6_ || param2)
                                          {
                                             mNextState = §%]§.§3F§;
                                             addr61:
                                             if(_loc6_ || param2)
                                             {
                                                break;
                                             }
                                             §§goto(addr87);
                                          }
                                          break;
                                       case 2:
                                          §6!H§.§[!W§();
                                          loop0:
                                          while(true)
                                          {
                                             addr37:
                                             while(true)
                                             {
                                                mNextState = §6!U§.§3F§;
                                                continue loop0;
                                             }
                                          }
                                          break;
                                       case 3:
                                          AngryBirdsFP11.§`!c§.§catch§();
                                          if(!_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr37);
                                                }
                                                else
                                                {
                                                   §§goto(addr61);
                                                }
                                             }
                                             §§goto(addr42);
                                          }
                                    }
                                    return;
                                    §§push(4);
                                 }
                                 §§goto(addr212);
                              }
                              addr202:
                              §§goto(addr203);
                              §§push(_loc4_);
                           }
                           §§goto(addr212);
                        }
                        if(§§pop() === §§pop())
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr192);
                           }
                           §§goto(addr212);
                        }
                        else
                        {
                           §§goto(addr202);
                           §§push("FULLSCREEN_BUTTON");
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr212);
               }
               §§goto(addr171);
            }
            §§goto(addr202);
         }
         §§goto(addr192);
      }
   }
}
