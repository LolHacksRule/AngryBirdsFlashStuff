package §1!c§
{
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§?>§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§7!&§;
   import §2u§.§7!m§;
   import §2u§.§]"%§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]0§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelEndEagleState";
      
      private static const §0K§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8"%§ = "LevelEndEagleState";
         }
         do
         {
            §0K§ = "ScoreLoopCountChannel";
         }
         while(_loc2_);
         
      }
      
      private var §?""§:§]W§;
      
      private var §]!b§:§?>§;
      
      public var mEagleScoreCounter:Number;
      
      private var § "#§:Number;
      
      private var §1R§:int;
      
      public function §]0§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "LevelEndEagleState")
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
         }
         do
         {
            §^!T§ = new §9%§(this);
            do
            {
               §^!T§.init(§7I§.§7!%§.Views.View_LevelEndEagle[0]);
               do
               {
                  this.§ "#§ = (§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).width;
                  do
                  {
                     §>D§.§0"6§(§0K§,1,1);
                  }
                  while(!_loc1_);
                  
               }
               while(_loc2_ && _loc1_);
               
            }
            while(!_loc1_);
            
         }
         while(_loc2_);
         
      }
      
      override public function activate(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§]!b§ = new §?>§(0,0,0,0);
               while(true)
               {
                  §^!T§.movieClip.addChildAt(this.§]!b§,§^!T§.movieClip.numChildren - 1);
                  loop2:
                  while(true)
                  {
                     (§^!T§.getItemByName("MovieClip_EagleMeterEmpty") as §7!m§).setVisibility(true);
                     while(true)
                     {
                        (§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).setVisibility(true);
                        addr61:
                        while(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
                  loop7:
                  while(!(_loc4_ && param1))
                  {
                     this.§]!b§.§!!p§(0.7);
                     if(!(_loc5_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        addr39:
                        if(false)
                        {
                           while(true)
                           {
                              §>D§.§9!q§("LevelCompletedTheme1");
                              continue loop7;
                              §§goto(addr39);
                           }
                           addr107:
                           §§push(§@!S§.controller.getEagleScore());
                           §§push(_loc5_ || _loc2_);
                           addr41:
                        }
                        else
                        {
                           §§goto(addr107);
                        }
                        if(§§pop())
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc5_)
                        {
                           this.§1R§ = § !4§.§%"7§.§@D§.userProgress.§+!]§(§4a§.currentLevel);
                        }
                        var _loc3_:* = _loc2_ > this.§1R§;
                        if(_loc5_)
                        {
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 this.§!!s§(_loc2_);
                                 addr253:
                                 while(true)
                                 {
                                 }
                              }
                              addr250:
                           }
                           while(true)
                           {
                              (§^!T§.getItemByName("TextField_EaglePercentage") as §7!&§).§'!"§.text = _loc2_ + "%";
                              loop11:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    §>D§.§9!q§("Hiscore_Count",§0K§,100);
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(§0!o§.§,2§);
                                       §§push(this);
                                       §§push({"mEagleScoreCounter":_loc2_});
                                       §§push({"mEagleScoreCounter":0});
                                       §§push(_loc2_ / 100);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() * 4);
                                       }
                                       §§pop().§?""§ = §§pop().§4!t§(§§pop(),§§pop(),§§pop(),§§pop());
                                       addr165:
                                       if(_loc5_ || this)
                                       {
                                          if(!_loc4_)
                                          {
                                             return;
                                             addr174:
                                          }
                                          break loop11;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr250);
                                 }
                                 addr188:
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§push(this.§?""§);
                                 if(!_loc4_)
                                 {
                                    §§pop().play();
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§goto(addr165);
                                    }
                                    loop15:
                                    while(true)
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          §§goto(addr188);
                                       }
                                       addr216:
                                       while(true)
                                       {
                                          §§push(this.§?""§);
                                          continue loop15;
                                       }
                                       §§goto(addr174);
                                    }
                                    continue;
                                    addr181:
                                 }
                                 while(true)
                                 {
                                    §§pop().onComplete = this.§%L§;
                                    §§goto(addr181);
                                    §§goto(addr195);
                                 }
                                 addr195:
                              }
                              §§goto(addr253);
                           }
                        }
                        §§goto(addr216);
                     }
                     else
                     {
                        §§goto(addr61);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr41);
         }
      }
      
      protected function §!!s§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            § !4§.§%"7§.§@D§.userProgress.§&!1§(§4a§.currentLevel,param1);
         }
      }
      
      protected function §%L§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GlowFilter = null;
         if(!(_loc2_ && _loc1_))
         {
            §>D§.§6A§(§0K§);
            if(_loc3_ || _loc3_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc3_)
                  {
                     addr53:
                     §>D§.§9!q§("Hiscore_Badge",§0K§);
                     addr57:
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     if(_loc3_)
                     {
                        (§^!T§.getItemByName("MovieClip_EagleMeterEffect") as §7!m§).setVisibility(true);
                        if(_loc2_ && _loc1_)
                        {
                        }
                        §§goto(addr102);
                     }
                     (§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).mClip.filters = [_loc1_];
                  }
                  §§goto(addr57);
               }
               addr102:
               return;
            }
         }
         §§goto(addr53);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.update(param1);
            loop0:
            do
            {
               if(int(this.mEagleScoreCounter) <= this.§1R§)
               {
                  (§^!T§.getItemByName("TextField_EaglePercentage") as §7!&§).§'!"§.text = int(this.§1R§) + "%";
                  for(; !_loc3_; (§^!T§.getItemByName("TextField_EaglePercentageEffects") as §7!&§).§'!"§.text = int(this.§1R§) + "%",if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  },if(false)
                  {
                     addr44:
                  },var _loc2_:Rectangle = new Rectangle(0,0,this.§ "#§ * (this.mEagleScoreCounter / 100),(§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).height),if(_loc4_)
                  {
                     (§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).mClip.scrollRect = _loc2_;
                     while(true)
                     {
                        (§^!T§.getItemByName("MovieClip_EagleMeterEffect") as §7!m§).mClip.rotation = (§^!T§.getItemByName("MovieClip_EagleMeterEffect") as §7!m§).mClip.rotation + param1 / 20;
                        while(!_loc3_)
                        {
                           if(!(_loc3_ && param1))
                           {
                              §@!S§.§2A§.clearLevel();
                              addr156:
                              return;
                              addr182:
                           }
                        }
                     }
                  },while(nextState.length > 0)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§goto(addr172);
                     }
                     §§goto(addr182);
                  },§§goto(addr156))
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        continue;
                     }
                  }
                  addr88:
                  §§goto(addr44);
               }
               (§^!T§.getItemByName("TextField_EaglePercentage") as §7!&§).§'!"§.text = int(this.mEagleScoreCounter) + "%";
            }
            while(_loc3_ && _loc2_);
            
            (§^!T§.getItemByName("TextField_EaglePercentageEffects") as §7!&§).§'!"§.text = int(this.mEagleScoreCounter) + "%";
         }
         §§goto(addr88);
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
               §§push(this.§]!b§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §>D§.§6A§(§0K§);
                        while(true)
                        {
                           this.mEagleScoreCounter = 0;
                           loop10:
                           while(_loc2_ || this)
                           {
                              while(true)
                              {
                                 §§push(this.§?""§);
                                 if(!_loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop10;
                                          }
                                          addr139:
                                          if(_loc2_ || _loc1_)
                                          {
                                             if(!_loc1_)
                                             {
                                                addr150:
                                                this.§?""§.stop();
                                                while(true)
                                                {
                                                   this.§?""§ = null;
                                                   loop13:
                                                   while(true)
                                                   {
                                                      addr92:
                                                      while(true)
                                                      {
                                                         (§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).mClip.filters = [];
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                                addr151:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!§^!T§.movieClip.contains(this.§]!b§))
                                                   {
                                                      continue loop1;
                                                   }
                                                }
                                                addr199:
                                             }
                                             while(true)
                                             {
                                                §^!T§.movieClip.removeChild(this.§]!b§);
                                                §§goto(addr220);
                                                §§goto(addr173);
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§]!b§ = null;
                                                §§goto(addr139);
                                             }
                                             addr194:
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr92);
                                 }
                                 §§goto(addr150);
                              }
                              return;
                           }
                        }
                     }
                  }
                  §§goto(addr199);
               }
            }
         }
         §§goto(addr163);
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
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
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
                  addr101:
                  §§push(0);
                  if(_loc5_)
                  {
                  }
               }
               else
               {
                  addr136:
                  §§push(3);
                  if(!_loc5_)
                  {
                     addr149:
                  }
               }
               §§goto(addr154);
            }
            else if("REPLAY" === _loc4_)
            {
               if(_loc6_)
               {
                  §§push(1);
                  if(!_loc6_)
                  {
                     §§goto(addr149);
                  }
               }
               else
               {
                  §§goto(addr136);
               }
               §§goto(addr154);
            }
            else
            {
               if("MENU" !== _loc4_)
               {
                  if("FULLSCREEN_BUTTON" === _loc4_)
                  {
                     §§goto(addr136);
                  }
                  else
                  {
                     §§push(4);
                  }
                  addr154:
                  switch(§§pop())
                  {
                     case 0:
                        §2G§();
                        §7"6§(StateCutScene.§8"%§);
                        break;
                        addr88:
                        addr83:
                     case 1:
                        §7"6§(§'8§.§8"%§);
                        break;
                        addr67:
                     case 2:
                        §>D§.§>!%§();
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              addr37:
                              §7"6§(§^j§.§8"%§);
                              if(_loc6_ || param1)
                              {
                                 break;
                              }
                              §§goto(addr67);
                           }
                           else
                           {
                              §§goto(addr88);
                           }
                        }
                        break;
                     case 3:
                        § !4§.§%"7§.§]!;§();
                        if(_loc6_ || param1)
                        {
                           if(_loc6_)
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
                                 §§goto(addr83);
                              }
                           }
                           §§goto(addr37);
                        }
                  }
                  return;
               }
               if(!(_loc5_ && this))
               {
                  §§push(2);
                  if(!(_loc6_ || param1))
                  {
                     §§goto(addr149);
                  }
               }
               else
               {
                  §§goto(addr136);
               }
               §§goto(addr154);
            }
            §§goto(addr136);
         }
         §§goto(addr101);
      }
   }
}
