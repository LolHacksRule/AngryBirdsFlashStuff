package §;!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§+!@§;
   import §0"$§.§6n§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §4!9§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelEndEagleState";
      
      private static const §>!x§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-!q§ = "LevelEndEagleState";
            do
            {
               §>!x§ = "ScoreLoopCountChannel";
            }
            while(!_loc1_);
            
         }
      }
      
      private var §'-§:§0]§;
      
      private var §7!k§:§,!e§;
      
      public var mEagleScoreCounter:Number;
      
      private var §&3§:Number;
      
      private var §`?§:int;
      
      public function §4!9§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §?P§ = new §2W§(this);
               loop1:
               for(; _loc1_; loop3:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §'!c§.§8G§(§>!x§,1,1);
                     if(!(_loc1_ || this))
                     {
                        continue loop3;
                     }
                     §§goto(addr41);
                  }
                  §§goto(addr53);
               })
               {
                  §?P§.init(§#"0§.§+#§.Views.View_LevelEndEagle[0]);
                  while(true)
                  {
                     this.§&3§ = (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).width;
                     continue loop1;
                     addr41:
                     if(!_loc2_)
                     {
                        return;
                        addr53:
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            super.activate(param1);
         }
         while(true)
         {
            this.§7!k§ = new §,!e§(0,0,0,0);
            while(true)
            {
               §?P§.movieClip.addChildAt(this.§7!k§,§?P§.movieClip.numChildren - 1);
               loop2:
               while(true)
               {
                  (§?P§.getItemByName("MovieClip_EagleMeterEmpty") as §6n§).setVisibility(true);
                  loop3:
                  while(true)
                  {
                     (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).setVisibility(true);
                     while(_loc5_)
                     {
                        while(true)
                        {
                           §'!c§.§3!f§("LevelCompletedTheme1");
                           do
                           {
                              this.§7!k§.§=v§(0.7);
                           }
                           while(_loc4_ && _loc2_);
                           
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
               }
            }
            if(!(_loc5_ || this))
            {
               continue;
            }
            if(false)
            {
               §§goto(addr57);
            }
            §§push(§&!"§.controller.getEagleScore());
            if(!(_loc4_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               this.§`?§ = §6!!§.singleton.§<!S§.userProgress.§2p§(§&" §.currentLevel);
            }
            var _loc3_:* = _loc2_ > this.§`?§;
            if(_loc5_ || _loc2_)
            {
               if(_loc3_)
               {
                  addr265:
                  this.§#$§(_loc2_);
                  addr268:
               }
               (§?P§.getItemByName("TextField_EaglePercentage") as §+!@§).§"v§.text = _loc2_ + "%";
               §'!c§.§3!f§("Hiscore_Count",§>!x§,100);
               §§push(this);
               §§push(§'^§.§2Z§);
               §§push(this);
               §§push({"mEagleScoreCounter":_loc2_});
               §§push({"mEagleScoreCounter":0});
               §§push(_loc2_ / 100);
               if(_loc5_)
               {
                  §§push(§§pop() * 4);
               }
               §§pop().§'-§ = §§pop().§!!f§(§§pop(),§§pop(),§§pop(),§§pop());
               addr226:
               addr262:
               if(!(_loc4_ && this))
               {
                  addr188:
                  this.§'-§.onComplete = this.§62§;
                  addr191:
                  if(_loc5_ || _loc3_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§push(this.§'-§);
                        if(!(_loc4_ && param1))
                        {
                           §§pop().play();
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 if(!(_loc5_ || param1))
                                 {
                                    §§goto(addr268);
                                 }
                                 return;
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr188);
                        addr205:
                     }
                     §§goto(addr265);
                  }
                  §§goto(addr262);
               }
               addr240:
               §§goto(addr240);
            }
            §§goto(addr205);
         }
      }
      
      protected function §#$§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §6!!§.singleton.§<!S§.userProgress.§!3§(§&" §.currentLevel,param1);
         }
      }
      
      protected function §62§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(!(_loc3_ && this))
         {
            §'!c§.§;! §(§>!x§);
            if(_loc2_ || _loc1_)
            {
               §§goto(addr36);
            }
            §§goto(addr56);
         }
         addr36:
         if(this.mEagleScoreCounter == 100)
         {
            if(_loc2_)
            {
               §'!c§.§3!f§("Hiscore_Badge",§>!x§);
               addr56:
               _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
               if(!_loc3_)
               {
                  (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).setVisibility(true);
                  if(!(_loc3_ && this))
                  {
                     (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).mClip.filters = [_loc1_];
                  }
               }
            }
            §§goto(addr56);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.update(param1);
         }
         loop0:
         while(int(this.mEagleScoreCounter) <= this.§`?§)
         {
            (§?P§.getItemByName("TextField_EaglePercentage") as §+!@§).§"v§.text = int(this.§`?§) + "%";
            do
            {
               (§?P§.getItemByName("TextField_EaglePercentageEffects") as §+!@§).§"v§.text = int(this.§`?§) + "%";
            }
            while(_loc3_);
            
            if(_loc4_ || _loc2_)
            {
               if(_loc4_)
               {
                  if(false)
                  {
                     addr48:
                  }
                  var _loc2_:Rectangle = new Rectangle(0,0,this.§&3§ * (this.mEagleScoreCounter / 100),(§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).height);
                  if(_loc4_ || param1)
                  {
                     (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).mClip.scrollRect = _loc2_;
                     while(true)
                     {
                        (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).mClip.rotation = (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).mClip.rotation + param1 / 20;
                     }
                     addr213:
                  }
                  while(nextState.length > 0)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     addr174:
                     if(!(_loc4_ || _loc2_))
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        §&!"§.§1!D§.clearLevel();
                        §§goto(addr174);
                     }
                     else
                     {
                        §§goto(addr213);
                     }
                  }
                  return;
               }
               continue;
            }
            loop4:
            while(true)
            {
               if(_loc4_)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
               addr119:
               while(true)
               {
                  (§?P§.getItemByName("TextField_EaglePercentageEffects") as §+!@§).§"v§.text = int(this.mEagleScoreCounter) + "%";
                  continue loop4;
               }
            }
            §§goto(addr48);
         }
         while(true)
         {
            (§?P§.getItemByName("TextField_EaglePercentage") as §+!@§).§"v§.text = int(this.mEagleScoreCounter) + "%";
            §§goto(addr119);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§7!k§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        if(§?P§.movieClip.contains(this.§7!k§))
                        {
                           while(true)
                           {
                              §?P§.movieClip.removeChild(this.§7!k§);
                              addr214:
                              while(true)
                              {
                              }
                              loop10:
                              for(; !(_loc2_ && this); loop15:
                              for(; !(_loc2_ && this); §§goto(addr65))
                              {
                                 while(true)
                                 {
                                    (§?P§.getItemByName("Button_Menu") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    continue loop15;
                                 }
                                 §§goto(addr36);
                              })
                              {
                                 §§push(this.§'-§);
                                 if(!_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          addr131:
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(_loc1_)
                                             {
                                                if(!(_loc1_ || _loc1_))
                                                {
                                                   continue loop2;
                                                }
                                                addr149:
                                                this.§'-§.stop();
                                                while(true)
                                                {
                                                   this.§'-§ = null;
                                                   loop12:
                                                   while(_loc1_ || _loc1_)
                                                   {
                                                      while(true)
                                                      {
                                                         (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).mClip.filters = [];
                                                         while(true)
                                                         {
                                                            (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).setVisibility(false);
                                                            continue loop10;
                                                            addr48:
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               (§?P§.getItemByName("Button_NextLevel") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                               addr55:
                                                               if(_loc2_)
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        while(!(_loc2_ && this))
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              (§?P§.getItemByName("Button_Replay") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                              continue loop18;
                                                                           }
                                                                           addr188:
                                                                           while(true)
                                                                           {
                                                                              this.§7!k§ = null;
                                                                              addr179:
                                                                              while(_loc1_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §'!c§.§;! §(§>!x§);
                                                                                    addr167:
                                                                                    while(_loc1_ || _loc1_)
                                                                                    {
                                                                                       this.mEagleScoreCounter = 0;
                                                                                       continue loop10;
                                                                                       §§goto(addr131);
                                                                                    }
                                                                                    §§goto(addr214);
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        continue loop10;
                                                                        addr65:
                                                                     }
                                                                     §§goto(addr48);
                                                                  }
                                                                  continue;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  return;
                                                                  addr36:
                                                               }
                                                               continue loop12;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr150:
                                             }
                                             else
                                             {
                                                §§goto(addr179);
                                             }
                                          }
                                          §§goto(addr167);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr91);
                                 }
                                 §§goto(addr149);
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§7!k§);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§pop().§9O§();
                           §§goto(addr188);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr163);
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!(_loc5_ && param2))
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                  }
               }
               else
               {
                  addr144:
                  §§push(2);
                  if(!_loc6_)
                  {
                  }
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(_loc6_ || param3)
                  {
                     §§push(1);
                     if(_loc5_ && param2)
                     {
                        addr164:
                     }
                  }
               }
               else if("MENU" === _loc4_)
               {
                  if(!(_loc5_ && param3))
                  {
                     §§goto(addr144);
                  }
               }
               else if("FULLSCREEN_BUTTON" !== _loc4_)
               {
                  addr169:
                  switch(§§pop())
                  {
                     case 0:
                        §!x§();
                        §<f§(StateCutScene.§-!q§);
                        break;
                        addr93:
                        addr78:
                     case 1:
                        §<f§(§[j§.§-!q§);
                        break;
                        addr72:
                     case 2:
                        §'!c§.§&j§();
                        if(!(_loc5_ && param3))
                        {
                           if(_loc6_ || param1)
                           {
                              addr32:
                              §<f§(§+A§.§-!q§);
                              if(_loc6_ || this)
                              {
                                 break;
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr78);
                        }
                        break;
                     case 3:
                        §6!!§.singleton.§%!O§();
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr32);
                              }
                              else
                              {
                                 §§goto(addr72);
                              }
                           }
                           §§goto(addr32);
                        }
                  }
                  return;
                  §§push(4);
               }
               §§goto(addr169);
               if(_loc6_)
               {
                  §§goto(addr164);
               }
            }
            §§goto(addr169);
         }
         §§goto(addr144);
      }
   }
}
