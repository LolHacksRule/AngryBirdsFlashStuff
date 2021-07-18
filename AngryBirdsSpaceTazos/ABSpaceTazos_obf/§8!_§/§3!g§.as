package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§&"$§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §3!g§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §^!s§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §3!g§)
         {
            STATE_NAME = "LevelEndEagleState";
            do
            {
               §^!s§ = "ScoreLoopCountChannel";
            }
            while(_loc2_);
            
         }
      }
      
      private var §'!z§:§5!9§;
      
      private var §&!=§:§&"$§;
      
      public var mEagleScoreCounter:Number;
      
      private var §#!Y§:Number;
      
      private var §^!V§:int;
      
      public function §3!g§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            loop0:
            while(true)
            {
               §8!A§ = new §1"F§(this);
               loop1:
               while(true)
               {
                  §8!A§.init(§-G§.§4+§.Views.View_LevelEndEagle[0]);
                  while(_loc2_)
                  {
                     this.§#!Y§ = (§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).width;
                     while(_loc2_ || _loc2_)
                     {
                        if(!_loc1_)
                        {
                           §<!O§.§;!D§(§^!s§,1,1);
                           if(_loc2_ || this)
                           {
                              return;
                              addr52:
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr52);
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
               this.§&!=§ = new §&"$§(0,0,0,0);
               while(true)
               {
                  §8!A§.movieClip.addChildAt(this.§&!=§,§8!A§.movieClip.numChildren - 1);
                  continue loop0;
                  loop6:
                  while(!(_loc4_ && param1))
                  {
                     this.§&!=§.§7t§(0.7);
                     if(!_loc5_)
                     {
                        continue;
                     }
                     addr32:
                     if(_loc5_ || _loc2_)
                     {
                        if(false)
                        {
                           addr61:
                           while(true)
                           {
                              §<!O§.playSound("LevelCompletedTheme1");
                              continue loop6;
                              §§goto(addr32);
                           }
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 addr63:
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    break;
                                 }
                                 §§goto(addr41);
                              }
                              §§goto(addr32);
                           }
                           addr41:
                           continue loop0;
                           addr61:
                        }
                        else
                        {
                           §§push(§9q§.§&!$§.getEagleScore());
                           if(!_loc4_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           if(_loc5_)
                           {
                              this.§^!V§ = § !g§.§;!'§.§&!`§.userProgress.§#!K§(§6u§.currentLevel);
                           }
                           var _loc3_:* = _loc2_ > this.§^!V§;
                           if(!_loc4_)
                           {
                              if(_loc3_)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    this.§7"#§(_loc2_);
                                    addr243:
                                    addr220:
                                    while(true)
                                    {
                                    }
                                    while(true)
                                    {
                                       if(!(_loc5_ || param1))
                                       {
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          §<!O§.playSound("Hiscore_Count",§^!s§,100);
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(§!D§.§[!1§);
                                             §§push(this);
                                             §§push({"mEagleScoreCounter":_loc2_});
                                             §§push({"mEagleScoreCounter":0});
                                             §§push(_loc2_ / 100);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() * 4);
                                             }
                                             §§pop().§'!z§ = §§pop().§1"<§(§§pop(),§§pop(),§§pop(),§§pop());
                                             loop13:
                                             while(_loc5_)
                                             {
                                                §§push(this.§'!z§);
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop().onComplete = this.§;[§;
                                                   addr176:
                                                   while(_loc5_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr243);
                                 }
                              }
                              while(true)
                              {
                                 (§8!A§.getItemByName("TextField_EaglePercentage") as §&!>§).§ !'§.text = _loc2_ + "%";
                                 §§goto(addr220);
                                 §§goto(addr243);
                              }
                           }
                           §§goto(addr237);
                        }
                     }
                     else
                     {
                        §§goto(addr61);
                     }
                     while(true)
                     {
                        (§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).setVisibility(true);
                        §§goto(addr61);
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function §7"#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            § !g§.§;!'§.§&!`§.userProgress.§]I§(§6u§.currentLevel,param1);
         }
      }
      
      protected function §;[§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(_loc2_)
         {
            §<!O§.§,!z§(§^!s§);
            if(_loc2_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(!_loc3_)
                  {
                     addr32:
                     §<!O§.playSound("Hiscore_Badge",§^!s§);
                     addr46:
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     if(!_loc3_)
                     {
                        (§8!A§.getItemByName("MovieClip_EagleMeterEffect") as §,y§).setVisibility(true);
                        if(_loc2_ || _loc1_)
                        {
                           (§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).mClip.filters = [_loc1_];
                        }
                     }
                  }
                  §§goto(addr46);
               }
               return;
            }
         }
         §§goto(addr32);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               if(int(this.mEagleScoreCounter) > this.§^!V§)
               {
                  if(!_loc3_)
                  {
                     (§8!A§.getItemByName("TextField_EaglePercentage") as §&!>§).§ !'§.text = int(this.mEagleScoreCounter) + "%";
                  }
               }
               else
               {
                  (§8!A§.getItemByName("TextField_EaglePercentage") as §&!>§).§ !'§.text = int(this.§^!V§) + "%";
                  while(true)
                  {
                     if(_loc3_ && _loc2_)
                     {
                        break loop0;
                     }
                     continue loop0;
                     addr70:
                     (§8!A§.getItemByName("TextField_EaglePercentageEffects") as §&!>§).§ !'§.text = int(this.§^!V§) + "%";
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(false)
                     {
                        break;
                     }
                     addr134:
                     var _loc2_:Rectangle = new Rectangle(0,0,this.§#!Y§ * (this.mEagleScoreCounter / 100),(§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).height);
                     if(!_loc3_)
                     {
                        (§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).mClip.scrollRect = _loc2_;
                        loop2:
                        while(true)
                        {
                           (§8!A§.getItemByName("MovieClip_EagleMeterEffect") as §,y§).mClip.rotation = (§8!A§.getItemByName("MovieClip_EagleMeterEffect") as §,y§).mClip.rotation + param1 / 20;
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 if(nextState.length > 0)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       §9q§.§>!L§.clearLevel();
                                    }
                                    break;
                                 }
                                 break;
                              }
                              continue loop2;
                           }
                           return;
                        }
                     }
                     §§goto(addr169);
                  }
                  addr39:
                  §§goto(addr134);
               }
            }
            loop4:
            while(!(_loc4_ || param1))
            {
               while(true)
               {
                  (§8!A§.getItemByName("TextField_EaglePercentageEffects") as §&!>§).§ !'§.text = int(this.mEagleScoreCounter) + "%";
                  continue loop4;
               }
            }
            §§goto(addr39);
         }
         §§goto(addr129);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§&!=§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §<!O§.§,!z§(§^!s§);
                        loop9:
                        while(true)
                        {
                           this.mEagleScoreCounter = 0;
                           loop10:
                           while(true)
                           {
                              §§push(this.§'!z§);
                              if(_loc2_ || _loc1_)
                              {
                                 if(§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          addr151:
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                §§push(this.§'!z§);
                                                while(true)
                                                {
                                                   §§pop().stop();
                                                   loop18:
                                                   while(_loc2_)
                                                   {
                                                      this.§'!z§ = null;
                                                      loop19:
                                                      while(true)
                                                      {
                                                         addr123:
                                                         while(true)
                                                         {
                                                            (§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).mClip.filters = [];
                                                            loop13:
                                                            while(true)
                                                            {
                                                               (§8!A§.getItemByName("MovieClip_EagleMeterEffect") as §,y§).setVisibility(false);
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  (§8!A§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        (§8!A§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           continue loop15;
                                                                           addr86:
                                                                           (§8!A§.getItemByName("Button_NextLevel") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                           if(_loc2_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    return;
                                                                                    addr44:
                                                                                 }
                                                                                 break loop13;
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop19;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                                addr162:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(§8!A§.movieClip.contains(this.§&!=§))
                                                   {
                                                      while(true)
                                                      {
                                                         §8!A§.movieClip.removeChild(this.§&!=§);
                                                         break loop11;
                                                         §§goto(addr151);
                                                      }
                                                      addr215:
                                                   }
                                                   addr181:
                                                   while(true)
                                                   {
                                                      §§push(this.§&!=§);
                                                      if(_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().§;"F§();
                                                      continue loop0;
                                                   }
                                                   continue loop1;
                                                }
                                                addr199:
                                             }
                                          }
                                          §§goto(addr215);
                                       }
                                       break;
                                       if(!(_loc2_ || this))
                                       {
                                          continue;
                                       }
                                       if(_loc1_)
                                       {
                                          continue loop10;
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr86);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr181);
                                    }
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr162);
                           }
                        }
                     }
                  }
                  §§goto(addr199);
               }
            }
         }
         §§goto(addr44);
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
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param2))
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!_loc6_)
               {
                  §§push(0);
                  if(_loc6_)
                  {
                  }
               }
               else
               {
                  addr128:
                  §§push(2);
                  if(_loc6_ && param2)
                  {
                     addr153:
                  }
               }
            }
            else if("REPLAY" === _loc4_)
            {
               if(_loc5_)
               {
                  §§push(1);
                  if(_loc6_ && this)
                  {
                  }
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
               }
               else if("FULLSCREEN_BUTTON" !== _loc4_)
               {
                  addr158:
                  switch(§§pop())
                  {
                     case 0:
                        §?R§();
                        §8!^§(StateCutScene.STATE_NAME);
                        if(!_loc6_)
                        {
                           break;
                        }
                        break;
                        addr87:
                     case 1:
                        §8!^§(§?!#§.STATE_NAME);
                        break;
                        addr64:
                     case 2:
                        §<!O§.§'N§();
                        if(!(_loc6_ && this))
                        {
                           if(!_loc6_)
                           {
                              addr27:
                              §8!^§(§]J§.STATE_NAME);
                              if(_loc5_)
                              {
                                 if(!(_loc6_ && param2))
                                 {
                                    break;
                                 }
                                 §§goto(addr87);
                              }
                              break;
                           }
                           §§goto(addr64);
                        }
                        break;
                     case 3:
                        § !g§.§;!'§.§%!N§();
                        if(!_loc6_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr27);
                        }
                  }
                  return;
                  §§push(4);
               }
               §§goto(addr158);
               if(!_loc6_)
               {
                  §§goto(addr153);
               }
            }
            §§goto(addr158);
         }
         §§goto(addr128);
      }
   }
}
