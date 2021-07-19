package §<"c§
{
   import §+D§.§0"$§;
   import §+D§.§6!D§;
   import §+D§.§^"m§;
   import §3§.§4! §;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §1!#§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndEagleState";
      
      private static const §0,§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!7§ = "LevelEndEagleState";
         }
         do
         {
            §0,§ = "ScoreLoopCountChannel";
         }
         while(!_loc1_);
         
      }
      
      private var §%"O§:§[#R§;
      
      private var §@"r§:§4! §;
      
      public var mEagleScoreCounter:Number;
      
      private var §3§:Number;
      
      private var §>4§:int;
      
      public function §1!#§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §@;§ = new §]#[§(this);
               loop1:
               while(true)
               {
                  §@;§.init(§&$§.§@8§.Views.View_LevelEndEagle[0]);
                  while(true)
                  {
                     this.§3§ = (§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).width;
                     continue loop0;
                     addr31:
                     if(_loc1_ || _loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§@"r§ = new §4! §(0,0,0,0);
               while(true)
               {
                  §@;§.movieClip.addChildAt(this.§@"r§,§@;§.movieClip.numChildren - 1);
                  continue loop0;
                  addr52:
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
                  this.§@"r§.§""a§(0.7);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr37:
                     if(!(_loc4_ && _loc2_))
                     {
                        if(false)
                        {
                           addr68:
                           while(true)
                           {
                              §?!r§.§"#_§("LevelCompletedTheme1");
                              addr50:
                              while(_loc5_)
                              {
                                 §§goto(addr52);
                              }
                              continue loop0;
                              §§goto(addr37);
                           }
                           while(!_loc4_)
                           {
                              §§goto(addr46);
                              §§goto(addr37);
                           }
                           addr46:
                           while(true)
                           {
                              (§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).setVisibility(true);
                              §§goto(addr68);
                           }
                           addr68:
                           addr79:
                        }
                        §§push(§,!q§.§>k§.getEagleScore());
                        if(_loc5_ || _loc3_)
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc5_)
                        {
                           this.§>4§ = §4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(§+!b§.currentLevel);
                        }
                        var _loc3_:* = _loc2_ > this.§>4§;
                        if(!(_loc4_ && this))
                        {
                           if(_loc3_)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 this.saveNewHighScore(_loc2_);
                              }
                              addr263:
                           }
                           (§@;§.getItemByName("TextField_EaglePercentage") as §6!D§).§13§.text = _loc2_ + "%";
                           §?!r§.§"#_§("Hiscore_Count",§0,§,100);
                           addr240:
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(this);
                              §§push(§-#C§.§%!E§);
                              §§push(this);
                              §§push({"mEagleScoreCounter":_loc2_});
                              §§push({"mEagleScoreCounter":0});
                              §§push(_loc2_ / 100);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() * 4);
                              }
                              §§pop().§%"O§ = §§pop().§^!H§(§§pop(),§§pop(),§§pop(),§§pop());
                              addr183:
                              this.§%"O§.onComplete = this.onCountComplete;
                              addr214:
                              if(_loc5_)
                              {
                                 §§push(this.§%"O§);
                                 if(!_loc4_)
                                 {
                                    §§pop().play();
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc4_ && _loc2_)
                                          {
                                             §§goto(addr240);
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr183);
                                 addr188:
                              }
                              §§goto(addr240);
                           }
                           §§goto(addr263);
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr50);
               }
            }
         }
         while(true)
         {
            (§@;§.getItemByName("MovieClip_EagleMeterEmpty") as §0"$§).setVisibility(true);
            §§goto(addr79);
         }
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §4#;§.singleton.dataModel.userProgress.§]"D§(§+!b§.currentLevel,param1);
         }
      }
      
      protected function onCountComplete() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(_loc2_ || _loc1_)
         {
            §?!r§.§9"4§(§0,§);
            if(_loc2_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc2_)
                  {
                     §?!r§.§"#_§("Hiscore_Badge",§0,§);
                     addr37:
                  }
                  _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                  if(_loc2_)
                  {
                     (§@;§.getItemByName("MovieClip_EagleMeterEffect") as §0"$§).setVisibility(true);
                     if(_loc3_ && _loc1_)
                     {
                     }
                     §§goto(addr96);
                  }
                  (§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).mClip.filters = [_loc1_];
               }
               addr96:
               return;
            }
         }
         §§goto(addr37);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               if(int(this.mEagleScoreCounter) <= this.§>4§)
               {
                  (§@;§.getItemByName("TextField_EaglePercentage") as §6!D§).§13§.text = int(this.§>4§) + "%";
                  while(true)
                  {
                     (§@;§.getItemByName("TextField_EaglePercentageEffects") as §6!D§).§13§.text = int(this.§>4§) + "%";
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!_loc4_)
                        {
                           if(false)
                           {
                              addr47:
                           }
                           var _loc2_:Rectangle = new Rectangle(0,0,this.§3§ * (this.mEagleScoreCounter / 100),(§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).height);
                           if(_loc3_)
                           {
                              (§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).mClip.scrollRect = _loc2_;
                              while(true)
                              {
                                 (§@;§.getItemByName("MovieClip_EagleMeterEffect") as §0"$§).mClip.rotation = (§@;§.getItemByName("MovieClip_EagleMeterEffect") as §0"$§).mClip.rotation + param1 / 20;
                                 addr166:
                                 if(!(_loc3_ || param1))
                                 {
                                    continue;
                                 }
                                 §,!q§.§9!,§.clearLevel();
                                 addr176:
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    for(; nextState.length > 0; §§goto(addr176))
                                    {
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr166);
                                    }
                                    addr150:
                                    return;
                                    addr203:
                                 }
                                 §§goto(addr150);
                              }
                           }
                           §§goto(addr203);
                        }
                        else
                        {
                           loop5:
                           while(true)
                           {
                              (§@;§.getItemByName("TextField_EaglePercentageEffects") as §6!D§).§13§.text = int(this.mEagleScoreCounter) + "%";
                              addr80:
                              while(true)
                              {
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          (§@;§.getItemByName("TextField_EaglePercentage") as §6!D§).§13§.text = int(this.mEagleScoreCounter) + "%";
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                    addr97:
                                 }
                              }
                           }
                        }
                        §§goto(addr47);
                     }
                     §§goto(addr80);
                  }
                  addr64:
               }
               §§goto(addr97);
            }
         }
         §§goto(addr64);
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
               §§push(this.§@"r§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§@;§.movieClip.contains(this.§@"r§))
                        {
                           while(true)
                           {
                              §@;§.movieClip.removeChild(this.§@"r§);
                              addr219:
                              loop11:
                              for(; _loc1_ || _loc2_; loop14:
                              while(true)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr111:
                                    if(_loc1_ || this)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          (§@;§.getItemByName("Button_Menu") as §^"m§).setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          loop15:
                                          while(!_loc2_)
                                          {
                                             continue loop0;
                                             while(true)
                                             {
                                                if(_loc2_ && this)
                                                {
                                                   continue loop15;
                                                }
                                                if(!_loc2_)
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr135);
                                             }
                                             while(true)
                                             {
                                                addr170:
                                                while(true)
                                                {
                                                   §?!r§.§9"4§(§0,§);
                                                   break loop14;
                                                }
                                             }
                                          }
                                          §§goto(addr140);
                                       }
                                       else
                                       {
                                          §§goto(addr219);
                                       }
                                    }
                                    break;
                                 }
                                 continue loop11;
                              },while(true)
                              {
                                 this.mEagleScoreCounter = 0;
                                 §§goto(addr169);
                                 §§goto(addr111);
                              })
                              {
                                 §§push(this.§%"O§);
                                 loop17:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    addr162:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§%"O§ = null;
                                          loop19:
                                          while(true)
                                          {
                                             addr126:
                                             addr169:
                                             while(true)
                                             {
                                                (§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).mClip.filters = [];
                                                addr135:
                                                while(true)
                                                {
                                                   (§@;§.getItemByName("MovieClip_EagleMeterEffect") as §0"$§).setVisibility(false);
                                                   continue loop11;
                                                }
                                                continue loop19;
                                             }
                                             addr169:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr140:
                                       }
                                       else
                                       {
                                          §§goto(addr169);
                                       }
                                       §§push(this.§%"O§);
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          continue loop17;
                                       }
                                       if(§§pop())
                                       {
                                          continue loop11;
                                       }
                                       §§goto(addr126);
                                    }
                                 }
                              }
                              while(true)
                              {
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§@"r§);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§pop().§%!G§();
                           §§goto(addr186);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr170);
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               (§@;§.getItemByName("Button_Replay") as §^"m§).setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
               §§goto(addr48);
            }
         }
         §§goto(addr38);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
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
                  if(_loc5_ || this)
                  {
                     addr129:
                     §§push(1);
                     if(_loc6_)
                     {
                     }
                     §§goto(addr173);
                  }
                  else
                  {
                     §§goto(addr138);
                  }
               }
               else
               {
                  if("MENU" === _loc4_)
                  {
                     if(_loc5_)
                     {
                        addr138:
                        §§push(2);
                        if(_loc6_ && param1)
                        {
                        }
                        §§goto(addr173);
                     }
                     else
                     {
                        §§goto(addr150);
                     }
                  }
                  else if("FULLSCREEN_BUTTON" === _loc4_)
                  {
                     §§goto(addr150);
                  }
                  else
                  {
                     §§push(4);
                  }
                  §§goto(addr150);
               }
               addr173:
               switch(§§pop())
               {
                  case 0:
                     §'$§();
                     loop0:
                     while(true)
                     {
                        § g§(StateCutScene.§^!7§);
                        addr75:
                        while(true)
                        {
                           if(_loc5_ || this)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                     }
                     break;
                  case 1:
                     § g§(§<2§.§^!7§);
                     if(!_loc6_)
                     {
                        break;
                     }
                     break;
                  case 2:
                     §?!r§.§0"#§();
                     if(!(_loc6_ && param3))
                     {
                        if(_loc5_ || param2)
                        {
                           addr34:
                           § g§(§+#?§.§^!7§);
                           break;
                           addr39:
                        }
                        else
                        {
                           §§goto(addr75);
                        }
                     }
                     break;
                  case 3:
                     §4#;§.singleton.§5"q§();
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && this))
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr34);
                        }
                        §§goto(addr39);
                     }
               }
               return;
            }
            if(_loc5_ || this)
            {
               §§push(0);
               if(_loc6_)
               {
                  addr168:
               }
            }
            else
            {
               addr150:
               §§push(3);
               if(_loc5_ || param2)
               {
                  §§goto(addr168);
               }
            }
            §§goto(addr173);
            §§goto(addr150);
         }
         §§goto(addr129);
      }
   }
}
