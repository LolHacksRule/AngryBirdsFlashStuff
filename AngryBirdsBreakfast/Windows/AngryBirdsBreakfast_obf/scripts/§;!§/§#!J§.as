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
   
   public class §#!J§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelEndEagleState";
      
      private static const §>!x§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!q§ = "LevelEndEagleState";
         }
         do
         {
            §>!x§ = "ScoreLoopCountChannel";
         }
         while(_loc1_ && §#!J§);
         
      }
      
      private var §0n§:§0]§;
      
      private var §7!k§:§,!e§;
      
      public var mEagleScoreCounter:Number;
      
      private var §'!L§:Number;
      
      private var §2!R§:int;
      
      public function §#!J§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §?P§ = new §2W§(this);
            while(true)
            {
               §?P§.init(§#"0§.§+#§.Views.View_LevelEndEagle[0]);
               while(_loc2_)
               {
                  if(!_loc1_)
                  {
                     this.§'!L§ = (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).width;
                     do
                     {
                        §'!c§.§8G§(§>!x§,1,1);
                     }
                     while(!(_loc2_ || this));
                     
                     if(!_loc1_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super.activate(param1);
            while(true)
            {
               this.§7!k§ = new §,!e§(0,0,0,0);
               addr89:
               while(_loc4_)
               {
               }
            }
         }
         while(true)
         {
            §?P§.movieClip.addChildAt(this.§7!k§,§?P§.movieClip.numChildren - 1);
            loop3:
            while(true)
            {
               (§?P§.getItemByName("MovieClip_EagleMeterEmpty") as §6n§).setVisibility(true);
               while(true)
               {
                  (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).setVisibility(true);
                  addr48:
                  while(_loc4_)
                  {
                     continue loop3;
                  }
               }
            }
         }
      }
      
      protected function §9s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §6!!§.singleton.§<!S§.userProgress.§!3§(§&" §.currentLevel,param1);
         }
      }
      
      protected function §!!8§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(!(_loc3_ && this))
         {
            §'!c§.§;! §(§>!x§);
            if(_loc2_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr52:
                     §'!c§.§3!f§("Hiscore_Badge",§>!x§);
                     addr56:
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     if(_loc2_ || _loc3_)
                     {
                        (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).setVisibility(true);
                        if(!_loc3_)
                        {
                           (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).mClip.filters = [_loc1_];
                        }
                     }
                  }
                  §§goto(addr56);
               }
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr52);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.update(param1);
            loop0:
            for(; int(this.mEagleScoreCounter) <= this.§2!R§; if(!(_loc3_ || _loc2_))
            {
               continue;
            },if(false)
            {
               §§goto(addr50);
            },§§goto(addr138))
            {
               (§?P§.getItemByName("TextField_EaglePercentage") as §+!@§).§"v§.text = int(this.§2!R§) + "%";
               while(!(_loc4_ && param1))
               {
                  if(!(_loc3_ || this))
                  {
                     (§?P§.getItemByName("TextField_EaglePercentageEffects") as §+!@§).§"v§.text = int(this.mEagleScoreCounter) + "%";
                  }
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  (§?P§.getItemByName("TextField_EaglePercentageEffects") as §+!@§).§"v§.text = int(this.§2!R§) + "%";
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
               }
               var _loc2_:Rectangle = new Rectangle(0,0,this.§'!L§ * (this.mEagleScoreCounter / 100),(§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).height);
               if(!(_loc4_ && _loc2_))
               {
                  (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).mClip.scrollRect = _loc2_;
               }
               loop2:
               while(true)
               {
                  (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).mClip.rotation = (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).mClip.rotation + param1 / 20;
                  while(nextState.length > 0)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     addr188:
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        continue loop2;
                     }
                     §&!"§.§1!D§.clearLevel();
                     §§goto(addr188);
                  }
                  return;
               }
            }
         }
         (§?P§.getItemByName("TextField_EaglePercentage") as §+!@§).§"v§.text = int(this.mEagleScoreCounter) + "%";
         §§goto(addr133);
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
                  if(!§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §'!c§.§;! §(§>!x§);
                        loop8:
                        while(true)
                        {
                           this.mEagleScoreCounter = 0;
                           loop9:
                           while(!_loc2_)
                           {
                              §§push(this.§0n§);
                              if(!(_loc2_ && this))
                              {
                                 if(§§pop())
                                 {
                                    loop10:
                                    for(; !(_loc2_ && _loc1_); if(!(_loc1_ || _loc2_))
                                    {
                                       continue;
                                    },§§goto(addr57))
                                    {
                                       §§push(this.§0n§);
                                       while(true)
                                       {
                                          §§pop().stop();
                                          loop17:
                                          while(true)
                                          {
                                             this.§0n§ = null;
                                             loop18:
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   addr132:
                                                   while(true)
                                                   {
                                                      (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).mClip.filters = [];
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).setVisibility(false);
                                                               loop13:
                                                               while(_loc1_)
                                                               {
                                                                  continue loop0;
                                                                  while(true)
                                                                  {
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        if(_loc1_ || _loc1_)
                                                                        {
                                                                           (§?P§.getItemByName("Button_Replay") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                           while(_loc1_)
                                                                           {
                                                                              continue loop10;
                                                                              (§?P§.getItemByName("Button_NextLevel") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc1_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              addr204:
                                                                              while(true)
                                                                              {
                                                                                 §?P§.movieClip.removeChild(this.§7!k§);
                                                                                 break loop12;
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop9;
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                   addr110:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(!§?P§.movieClip.contains(this.§7!k§))
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   addr188:
                                                }
                                                while(true)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§7!k§ = null;
                                       break loop9;
                                       §§goto(addr144);
                                    }
                                    addr144:
                                    addr183:
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr153);
                           }
                           continue loop7;
                        }
                     }
                  }
                  §§goto(addr188);
               }
            }
         }
         §§goto(addr171);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!_loc6_)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     addr122:
                  }
               }
               else
               {
                  addr128:
                  §§push(2);
                  if(_loc5_)
                  {
                     addr131:
                  }
                  else
                  {
                     addr153:
                  }
               }
            }
            else if("REPLAY" === _loc4_)
            {
               if(_loc5_ || param3)
               {
                  §§push(1);
                  if(_loc5_)
                  {
                     §§goto(addr122);
                  }
                  §§goto(addr158);
               }
               else
               {
                  §§goto(addr128);
               }
            }
            else
            {
               if("MENU" === _loc4_)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr128);
                  }
                  else
                  {
                     addr135:
                     §§push(3);
                     if(_loc5_ || param2)
                     {
                        §§goto(addr153);
                     }
                  }
               }
               else if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr135);
               }
               else
               {
                  §§push(4);
               }
               §§goto(addr135);
            }
            addr158:
            switch(§§pop())
            {
               case 0:
                  §!x§();
                  loop0:
                  while(true)
                  {
                     §<f§(StateCutScene.§-!q§);
                     addr85:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  break;
               case 1:
                  §<f§(§[j§.§-!q§);
                  break;
                  addr69:
               case 2:
                  §'!c§.§&j§();
                  addr59:
                  if(_loc5_)
                  {
                     addr48:
                     §<f§(§4!9§.§-!q§);
                     break;
                     addr53:
                  }
                  else
                  {
                     §§goto(addr69);
                  }
                  break;
               case 3:
                  §6!!§.singleton.§%!O§();
                  if(_loc5_)
                  {
                     if(_loc5_ || param1)
                     {
                        if(_loc5_ || param1)
                        {
                           if(!(_loc6_ && param3))
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr85);
                           }
                        }
                        else
                        {
                           §§goto(addr59);
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr53);
                  }
            }
            return;
         }
         §§goto(addr135);
      }
   }
}
