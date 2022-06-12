package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&q§.§%1§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §]!A§.;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §<!z§ extends §1-§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §^e§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "LevelEndEagleState";
            do
            {
               §^e§ = "ScoreLoopCountChannel";
            }
            while(_loc2_);
            
         }
      }
      
      private var §<!J§:§"m§;
      
      private var §-9§:§%1§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §?Z§:Number;
      
      protected var §?!M§:int;
      
      public function §<!z§(param1:Boolean = false, param2:String = "LevelEndEagleState")
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
         if(_loc1_)
         {
            super.init();
         }
         do
         {
            §6w§ = new §7!A§(this);
            do
            {
               §6w§.init(§ "A§.§4[§.Views.View_LevelEndEagle[0]);
               do
               {
                  this.§?Z§ = (§6w§.getItemByName("MovieClip_EagleMeterFill") as §7"-§).width;
                  do
                  {
                     §>!E§.§0I§(§^e§,1,1);
                  }
                  while(_loc2_ && _loc1_);
                  
               }
               while(_loc2_ && this);
               
            }
            while(_loc2_);
            
         }
         while(_loc2_ && this);
         
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.activate();
            while(true)
            {
               this.§-9§ = new §%1§(0,0,0,0);
               addr93:
               while(true)
               {
                  §6w§.movieClip.addChildAt(this.§-9§,§6w§.movieClip.numChildren - 1);
               }
               addr47:
               if(_loc3_ && this)
               {
                  continue;
               }
               this.§-9§.§?!,§(0.7);
               if(!_loc3_)
               {
                  addr32:
                  if(false)
                  {
                     loop5:
                     while(true)
                     {
                        §>!E§.§7N§("LevelCompletedTheme1");
                        addr38:
                        addr83:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              addr40:
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              §§goto(addr47);
                           }
                           addr61:
                           addr70:
                           while(!_loc3_)
                           {
                              continue loop5;
                           }
                           while(!_loc3_)
                           {
                              §6w§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
                              §§goto(addr61);
                           }
                           §§goto(addr93);
                        }
                        while(true)
                        {
                           §6w§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
                           §§goto(addr70);
                           §§goto(addr40);
                        }
                     }
                  }
                  §§push(§#6§.§'" §.getEagleScore());
                  if(_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc1_:* = §§pop();
                  if(!_loc3_)
                  {
                     this.§?!M§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§'!O§);
                  }
                  var _loc2_:* = _loc1_ > this.§?!M§;
                  if(!(_loc3_ && this))
                  {
                     if(_loc2_)
                     {
                        while(true)
                        {
                           this.saveNewHighScore(_loc1_);
                           addr241:
                           while(true)
                           {
                           }
                        }
                        addr238:
                     }
                     while(true)
                     {
                        (§6w§.getItemByName("TextField_EaglePercentage") as §-"E§).§5!=§.text = _loc1_ + "%";
                        loop10:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr238);
                           }
                           addr214:
                           while(_loc4_ || this)
                           {
                              §§push(this);
                              §§push(§>!+§.§;"§);
                              §§push(this);
                              §§push({"mEagleScoreCounter":_loc1_});
                              §§push({"mEagleScoreCounter":0});
                              §§push(_loc1_ / 100);
                              if(_loc4_)
                              {
                                 §§push(§§pop() * 4);
                              }
                              §§pop().§<!J§ = §§pop().§^!K§(§§pop(),§§pop(),§§pop(),§§pop());
                              loop13:
                              while(true)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    break loop10;
                                 }
                                 §§push(this.§<!J§);
                                 while(true)
                                 {
                                    §§pop().onComplete = this.onCountComplete;
                                    §§push(this.§<!J§);
                                    addr169:
                                    continue loop13;
                                    if(_loc4_)
                                    {
                                       §§pop().play();
                                       if(_loc4_)
                                       {
                                          return;
                                       }
                                       continue loop13;
                                    }
                                 }
                              }
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue;
                              }
                              §§goto(addr169);
                           }
                        }
                        §§goto(addr241);
                     }
                  }
                  while(true)
                  {
                     §>!E§.§7N§("Hiscore_Count",§^e§,100);
                     §§goto(addr214);
                  }
               }
               §§goto(addr38);
            }
         }
         §§goto(addr83);
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            AngryBirdsFP11.sUserProgress.§<!,§(LevelManager.§'!O§,param1);
         }
      }
      
      protected function onCountComplete() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GlowFilter = null;
         if(_loc2_ || _loc3_)
         {
            §>!E§.§1!;§(§^e§);
            if(_loc2_)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr52:
                     §>!E§.§7N§("Hiscore_Badge",§^e§);
                  }
                  _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                  if(!_loc3_)
                  {
                     (§6w§.getItemByName("MovieClip_EagleMeterEffect") as §7"-§).setVisibility(true);
                     if(_loc2_ || _loc2_)
                     {
                        (§6w§.getItemByName("MovieClip_EagleMeterFill") as §7"-§).mClip.filters = [_loc1_];
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(super.run(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            §§push(_loc2_);
            if(!(_loc5_ && param1))
            {
               if(§§pop() == §1-§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  do
                  {
                     if(int(this.mEagleScoreCounter) > this.§?!M§)
                     {
                        continue;
                     }
                     (§6w§.getItemByName("TextField_EaglePercentage") as §-"E§).§5!=§.text = int(this.§?!M§) + "%";
                     while(_loc4_ || param1)
                     {
                        (§6w§.getItemByName("TextField_EaglePercentageEffects") as §-"E§).§5!=§.text = int(this.§?!M§) + "%";
                        if(!_loc5_)
                        {
                           if(!_loc4_)
                           {
                              if(!(_loc5_ && this))
                              {
                                 (§6w§.getItemByName("TextField_EaglePercentageEffects") as §-"E§).§5!=§.text = int(this.mEagleScoreCounter) + "%";
                                 break;
                              }
                              addr154:
                              return _loc2_;
                           }
                           addr135:
                           if(!(_loc5_ && this))
                           {
                              if(false)
                              {
                                 addr59:
                              }
                              var _loc3_:Rectangle = new Rectangle(0,0,this.§?Z§ * (this.mEagleScoreCounter / 100),(§6w§.getItemByName("MovieClip_EagleMeterFill") as §7"-§).height);
                              if(!(_loc5_ && _loc2_))
                              {
                                 (§6w§.getItemByName("MovieClip_EagleMeterFill") as §7"-§).mClip.scrollRect = _loc3_;
                                 loop2:
                                 do
                                 {
                                    (§6w§.getItemByName("MovieClip_EagleMeterEffect") as §7"-§).mClip.rotation = (§6w§.getItemByName("MovieClip_EagleMeterEffect") as §7"-§).mClip.rotation + param1 / 20;
                                    while(mNextState.length > 0)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    return §1-§.STATE_STATUS_RUNNING;
                                 }
                                 while(!(_loc4_ || param1));
                                 
                                 §#6§.§6!z§.clearLevel();
                              }
                              return §1-§.STATE_STATUS_COMPLETED;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr59);
                  }
                  while(!_loc4_);
                  
                  (§6w§.getItemByName("TextField_EaglePercentage") as §-"E§).§5!=§.text = int(this.mEagleScoreCounter) + "%";
                  §§goto(addr135);
               }
            }
         }
         §§goto(addr154);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§-9§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§6w§.movieClip.contains(this.§-9§))
                        {
                           while(true)
                           {
                              §6w§.movieClip.removeChild(this.§-9§);
                              addr200:
                              while(true)
                              {
                              }
                           }
                           addr195:
                        }
                        addr178:
                        while(true)
                        {
                           §§push(this.§-9§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§pop().clean();
                           while(true)
                           {
                              this.§-9§ = null;
                              addr177:
                              while(true)
                              {
                              }
                           }
                        }
                        continue loop1;
                     }
                     addr189:
                  }
                  loop7:
                  while(true)
                  {
                     §>!E§.§1!;§(§^e§);
                     loop8:
                     while(true)
                     {
                        this.mEagleScoreCounter = 0;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop8;
                           }
                           if(!(_loc2_ || this))
                           {
                              break;
                           }
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(this.§<!J§);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this.§<!J§);
                                          addr134:
                                          while(true)
                                          {
                                             §§pop().stop();
                                             loop18:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   this.§<!J§ = null;
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop18;
                                                      }
                                                      addr120:
                                                      while(true)
                                                      {
                                                         (§6w§.getItemByName("MovieClip_EagleMeterFill") as §7"-§).mClip.filters = [];
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            (§6w§.getItemByName("MovieClip_EagleMeterEffect") as §7"-§).setVisibility(false);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               (§6w§.getItemByName("Button_Menu") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                               loop14:
                                                               while(!_loc1_)
                                                               {
                                                                  (§6w§.getItemByName("Button_Replay") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     continue loop14;
                                                                     addr70:
                                                                     (§6w§.getItemByName("Button_NextLevel") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                     if(_loc2_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop12;
                                                            }
                                                         }
                                                         continue loop16;
                                                         §§goto(addr120);
                                                      }
                                                   }
                                                   addr137:
                                                }
                                                §§goto(addr200);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr134);
                              }
                              else
                              {
                                 §§goto(addr195);
                              }
                           }
                           §§goto(addr184);
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           if(!(_loc1_ && this))
                           {
                              §§goto(addr70);
                           }
                           §§goto(addr189);
                        }
                        continue loop7;
                     }
                  }
               }
            }
         }
         §§goto(addr177);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
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
               if(_loc6_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           addr210:
                        }
                     }
                     else
                     {
                        addr169:
                        §§push(1);
                        if(_loc5_ && this)
                        {
                           addr217:
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!(_loc5_ && this))
                     {
                        addr158:
                        §§push(_loc4_);
                        if(!(_loc5_ && this))
                        {
                           addr166:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr169);
                              }
                              §§goto(addr222);
                           }
                           else
                           {
                              §§push("MENU");
                              if(!(_loc5_ && param1))
                              {
                                 addr196:
                                 §§push(_loc4_);
                                 if(!_loc5_)
                                 {
                                    addr199:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          addr202:
                                          §§push(2);
                                          if(!(_loc5_ && param3))
                                          {
                                             §§goto(addr210);
                                          }
                                       }
                                       else
                                       {
                                          addr214:
                                          §§push(3);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr217);
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                    else
                                    {
                                       addr212:
                                       §§push("FULLSCREEN_BUTTON");
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr214);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr214);
                                 }
                                 else
                                 {
                                    addr222:
                                    loop2:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §!!7§.§,L§();
                                          mNextState = StateCutScene.STATE_NAME;
                                          break;
                                          addr99:
                                          addr114:
                                       case 1:
                                          §!!7§.§-V§();
                                          loop0:
                                          while(true)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                mNextState = §!!7§.STATE_NAME;
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop0;
                                                }
                                                addr78:
                                             }
                                             else
                                             {
                                                §§goto(addr99);
                                             }
                                          }
                                          break;
                                       case 2:
                                          §>!E§.§&!^§();
                                          if(!(_loc5_ && param2))
                                          {
                                             if(!(_loc5_ && param3))
                                             {
                                                addr47:
                                                mNextState = this.getMenuButtonTargetState();
                                                break;
                                                addr52:
                                             }
                                             else
                                             {
                                                §§goto(addr114);
                                             }
                                          }
                                          break;
                                       case 3:
                                          AngryBirdsFP11.§@<§.§'!+§();
                                          if(!(_loc5_ && param3))
                                          {
                                             if(!(_loc5_ && param3))
                                             {
                                                if(!(_loc5_ && param3))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr47);
                                                }
                                                else
                                                {
                                                   §§goto(addr78);
                                                }
                                             }
                                             §§goto(addr52);
                                          }
                                    }
                                    return;
                                    §§push(4);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr212);
                           }
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr222);
               }
               §§goto(addr166);
            }
            §§goto(addr158);
         }
         §§goto(addr202);
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §8"D§.STATE_NAME;
      }
   }
}
