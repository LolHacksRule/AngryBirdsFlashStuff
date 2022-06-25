package §;H§
{
   import §#!H§.§^I§;
   import §+0§.§,!E§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#!G§ extends §,!E§
   {
      
      public static const §"!s§:String = "LevelEndEagleState";
      
      private static const §[!m§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §#!G§))
         {
            §"!s§ = "LevelEndEagleState";
         }
         do
         {
            §[!m§ = "ScoreLoopCountChannel";
         }
         while(_loc2_ && §#!G§);
         
      }
      
      private var §6v§:§!q§;
      
      private var §4!E§:§^I§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §6! §:Number;
      
      protected var §,!b§:int;
      
      public function §#!G§(param1:Boolean = false, param2:String = "LevelEndEagleState")
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
               §&!m§ = new §4`§(this);
               do
               {
                  §&!m§.init(§ !I§.§3!a§.Views.View_LevelEndEagle[0]);
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
               this.§4!E§ = new §^I§(0,0,0,0);
               addr93:
               while(true)
               {
                  §&!m§.movieClip.addChildAt(this.§4!E§,§&!m§.movieClip.numChildren - 1);
               }
            }
            addr96:
         }
         while(true)
         {
            §&!m§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
            while(!(_loc3_ && this))
            {
               §&!m§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
               for(; _loc4_; while(true)
               {
                  §9'§.playSound("LevelCompletedTheme1");
                  do
                  {
                     this.§4!E§.§;'§(0.7);
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
                     §§push(§^!c§.§-U§.getEagleScore());
                     if(_loc4_ || this)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     if(!_loc3_)
                     {
                        this.§,!b§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§%n§);
                     }
                     var _loc2_:* = _loc1_ > this.§,!b§;
                     if(_loc4_)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§3!X§(_loc1_);
                              addr236:
                              addr166:
                              while(true)
                              {
                              }
                              if(!(_loc4_ || _loc1_))
                              {
                                 continue;
                              }
                              §§push(this.§6v§);
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
                                          §§push(§-!,§.§7!j§);
                                          §§push(this);
                                          §§push({"mEagleScoreCounter":_loc1_});
                                          §§push({"mEagleScoreCounter":0});
                                          §§push(_loc1_ / 100);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() * 4);
                                          }
                                          §§pop().§6v§ = §§pop().§,!`§(§§pop(),§§pop(),§§pop(),§§pop());
                                       }
                                       while(true)
                                       {
                                          §9'§.playSound("Hiscore_Count",§[!m§,100);
                                          §§goto(addr211);
                                       }
                                       addr211:
                                       addr230:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§6v§);
                                       continue loop14;
                                    }
                                 }
                                 §§goto(addr236);
                                 addr157:
                              }
                              while(true)
                              {
                                 §§pop().onComplete = this.§#!b§;
                                 §§goto(addr157);
                                 §§goto(addr173);
                              }
                              addr173:
                           }
                        }
                        while(true)
                        {
                           (§&!m§.getItemByName("TextField_EaglePercentage") as §?!x§).§,!F§.text = _loc1_ + "%";
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
      
      protected function §3!X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            AngryBirdsFP11.sUserProgress.§-!N§(LevelManager.§%n§,param1);
         }
      }
      
      protected function §#!b§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GlowFilter = null;
         if(_loc3_ || _loc3_)
         {
            §9'§.§7!,§(§[!m§);
            if(!_loc2_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr53:
                     §9'§.playSound("Hiscore_Badge",§[!m§);
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     addr57:
                     if(_loc3_ || _loc1_)
                     {
                        (§&!m§.getItemByName("MovieClip_EagleMeterEffect") as §1!=§).setVisibility(true);
                        if(_loc2_)
                        {
                        }
                        §§goto(addr102);
                     }
                     (§&!m§.getItemByName("MovieClip_EagleMeterFill") as §1!=§).mClip.filters = [_loc1_];
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
               if(§§pop() == §,!E§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(int(this.mEagleScoreCounter) <= this.§,!b§)
                     {
                        (§&!m§.getItemByName("TextField_EaglePercentage") as §?!x§).§,!F§.text = int(this.§,!b§) + "%";
                        while(true)
                        {
                           if(_loc5_ || param1)
                           {
                              continue;
                           }
                        }
                        while(!(_loc4_ && param1))
                        {
                           (§&!m§.getItemByName("TextField_EaglePercentageEffects") as §?!x§).§,!F§.text = int(this.mEagleScoreCounter) + "%";
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
                  (§&!m§.getItemByName("TextField_EaglePercentage") as §?!x§).§,!F§.text = int(this.mEagleScoreCounter) + "%";
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
               §§push(this.§4!E§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §9'§.§7!,§(§[!m§);
                        loop9:
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              this.mEagleScoreCounter = 0;
                              loop10:
                              while(true)
                              {
                                 §§push(this.§6v§);
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(!§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          (§&!m§.getItemByName("MovieClip_EagleMeterFill") as §1!=§).mClip.filters = [];
                                          while(true)
                                          {
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                continue loop0;
                                             }
                                             (§&!m§.getItemByName("MovieClip_EagleMeterEffect") as §1!=§).setVisibility(false);
                                             loop13:
                                             while(true)
                                             {
                                                (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                loop14:
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      addr86:
                                                      if(!(_loc2_ && this))
                                                      {
                                                         (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                         continue;
                                                      }
                                                      addr204:
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            this.§4!E§ = null;
                                                            break loop14;
                                                         }
                                                         addr217:
                                                         while(true)
                                                         {
                                                            §&!m§.movieClip.removeChild(this.§4!E§);
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
                                 if(!§&!m§.movieClip.contains(this.§4!E§))
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
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
                                          §;W§.§&p§();
                                          if(!(_loc5_ && param2))
                                          {
                                             mNextState = StateCutScene.§"!s§;
                                             break;
                                             addr87:
                                          }
                                          break;
                                       case 1:
                                          §;W§.§&!5§();
                                          if(_loc6_ || param2)
                                          {
                                             mNextState = §;W§.§"!s§;
                                             addr61:
                                             if(_loc6_ || param2)
                                             {
                                                break;
                                             }
                                             §§goto(addr87);
                                          }
                                          break;
                                       case 2:
                                          §9'§.§0D§();
                                          loop0:
                                          while(true)
                                          {
                                             addr37:
                                             while(true)
                                             {
                                                mNextState = this.§<!m§();
                                                continue loop0;
                                             }
                                          }
                                          break;
                                       case 3:
                                          AngryBirdsFP11.§3l§.§1T§();
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
      
      public function §<!m§() : String
      {
         return §!y§.§"!s§;
      }
   }
}
