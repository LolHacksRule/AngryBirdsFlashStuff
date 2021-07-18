package §<"c§
{
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§6!D§;
   import §+D§.§^"m§;
   import §1!i§.§;7§;
   import §3§.§1"M§;
   import §3§.§4! §;
   import §3§.§<#A§;
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
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §5"p§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndState";
      
      public static const §`">§:Number = 30;
      
      protected static const §0,§:String = "ScoreLoopCountChannel";
      
      protected static const §`O§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^!7§ = "LevelEndState";
         }
         do
         {
            §`">§ = 30;
            do
            {
               §0,§ = "ScoreLoopCountChannel";
               do
               {
                  §`O§ = "EndScreenEffectChannel";
               }
               while(_loc2_ && _loc2_);
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §8S§:§[#R§;
      
      private var §@1§:Number;
      
      private var §'!D§:Number = 0.0;
      
      private var §2"J§:Number = 0.0;
      
      private var §@!U§:Boolean = false;
      
      private var §6!6§:Timer;
      
      private var §@"r§:§4! §;
      
      protected var §2k§:Array;
      
      protected var §0!r§:§<#A§;
      
      protected var §%#>§:Vector.<§<#A§>;
      
      public var mNewScoreCounter:int;
      
      private var §-!t§:int;
      
      private var §5"G§:Boolean;
      
      protected var §[m§:Boolean;
      
      private var §]!w§:§;7§;
      
      protected var §<!L§:Boolean;
      
      private var §3!F§:§[#R§;
      
      protected var §%!x§:Boolean;
      
      protected var §["%§:int;
      
      public function §5"p§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§2k§ = [];
            while(true)
            {
               this.§]!w§ = new §;7§();
               while(!(_loc5_ && this))
               {
                  super(param1,param3,param4,param2);
                  if(_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §@;§ = new §]#[§(this);
            loop1:
            while(true)
            {
               §@;§.init(this.getViewXML());
               while(true)
               {
                  this.§;!8§();
                  while(_loc2_)
                  {
                     this.§%#>§ = new Vector.<§<#A§>();
                     while(_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      protected function §;!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§2k§);
            while(true)
            {
               §§pop().push((§@;§.getItemByName("Button_Menu") as §^"m§).x);
            }
            addr116:
         }
         loop1:
         while(true)
         {
            §§push(this.§2k§);
            loop2:
            while(_loc2_)
            {
               §§pop().push((§@;§.getItemByName("Button_Replay") as §^"m§).x);
               while(!(_loc1_ && _loc2_))
               {
                  §§push(this.§2k§);
                  continue loop2;
                  while(!(_loc1_ && _loc1_))
                  {
                     §§pop().push((§@;§.getItemByName("Button_NextLevel") as §^"m§).x);
                     while(true)
                     {
                        §§push(this.§2k§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§pop().push((§@;§.getItemByName("Button_CutScene") as §^"m§).x);
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        §§goto(addr48);
                     }
                  }
                  if(_loc2_ || this)
                  {
                     return;
                  }
               }
               continue loop1;
            }
            §§goto(addr116);
         }
      }
      
      protected function getViewXML() : XML
      {
         return §&$§.§@8§.Views.View_LevelEnd[0];
      }
      
      protected function §[r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§4#;§.singleton.dataModel.userProgress.isLevelPassed(§+!b§.currentLevel))
            {
               (§@;§.getItemByName("Button_Menu") as §^"m§).setVisibility(true);
               loop0:
               while(!_loc1_)
               {
                  (§@;§.getItemByName("Button_Replay") as §^"m§).setVisibility(true);
                  while(!(_loc1_ && _loc1_))
                  {
                     (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(false);
                     loop2:
                     for(; !(_loc1_ && _loc2_); if(_loc1_ && _loc1_)
                     {
                        continue;
                     },§§goto(addr70))
                     {
                        (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(true);
                        loop3:
                        while(!_loc1_)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              while(true)
                              {
                                 (§@;§.getItemByName("Button_Menu") as §^"m§).x = this.§2k§[0];
                                 loop10:
                                 while(_loc2_ || _loc2_)
                                 {
                                    (§@;§.getItemByName("Button_Replay") as §^"m§).x = this.§2k§[1];
                                    while(!_loc1_)
                                    {
                                       continue loop2;
                                       (§@;§.getItemByName("Button_CutScene") as §^"m§).x = this.§2k§[2];
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             §§goto(addr20);
                                          }
                                          continue loop10;
                                          continue loop10;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 addr234:
                                 while(true)
                                 {
                                    (§@;§.getItemByName("Button_Replay") as §^"m§).x = this.§2k§[0] + Math.abs(this.§2k§[1] - this.§2k§[0]) / 2;
                                    break loop0;
                                 }
                              }
                              addr107:
                           }
                           loop4:
                           while(true)
                           {
                              (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(true);
                              §§goto(addr234);
                              addr252:
                              while(true)
                              {
                                 (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(false);
                                 continue loop4;
                              }
                           }
                           (§@;§.getItemByName("Button_CutScene") as §^"m§).x = this.§2k§[1] + Math.abs(this.§2k§[2] - this.§2k§[1]) / 2;
                           break;
                        }
                        addr20:
                        return;
                     }
                  }
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           while(true)
                           {
                              (§@;§.getItemByName("Button_Menu") as §^"m§).setVisibility(false);
                              addr278:
                              while(true)
                              {
                                 (§@;§.getItemByName("Button_Replay") as §^"m§).setVisibility(true);
                                 §§goto(addr252);
                              }
                           }
                           addr271:
                        }
                        §§goto(addr225);
                     }
                     §§goto(addr278);
                  }
                  §§goto(addr252);
               }
            }
            §§goto(addr271);
         }
         §§goto(addr107);
      }
      
      protected function §#N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§@;§.getItemByName("Button_Menu") as §^"m§).setVisibility(true);
            loop0:
            while(true)
            {
               (§@;§.getItemByName("Button_Replay") as §^"m§).setVisibility(true);
               while(true)
               {
                  (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(false);
                  loop2:
                  for(; !(_loc1_ && _loc1_); while(true)
                  {
                     if(!(_loc2_ || this))
                     {
                        continue loop2;
                     }
                     (§@;§.getItemByName("Button_Menu") as §^"m§).x = this.§2k§[0];
                     §§goto(addr168);
                  })
                  {
                     if(!§+!b§.getNextLevelId())
                     {
                        (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(false);
                        loop3:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              do
                              {
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    loop6:
                                    while(_loc1_)
                                    {
                                       while(true)
                                       {
                                          (§@;§.getItemByName("Button_Replay") as §^"m§).x = this.§2k§[1];
                                          continue loop6;
                                       }
                                    }
                                    continue;
                                 }
                                 if(!(_loc2_ || this))
                                 {
                                    continue loop2;
                                 }
                              }
                              while(!(_loc2_ || _loc1_));
                              
                              break;
                           }
                           while(true)
                           {
                              (§@;§.getItemByName("Button_Menu") as §^"m§).x = this.§2k§[0] + Math.abs(this.§2k§[1] - this.§2k§[0]) / 2;
                              while(!_loc1_)
                              {
                                 (§@;§.getItemByName("Button_Replay") as §^"m§).x = this.§2k§[1] + Math.abs(this.§2k§[2] - this.§2k§[1]) / 2;
                                 if(!(_loc1_ && this))
                                 {
                                    if(_loc2_)
                                    {
                                       break loop3;
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                     while(true)
                     {
                        (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(true);
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§%!x§ = false;
               loop1:
               while(true)
               {
                  §,!q§.pause();
                  while(true)
                  {
                     this.§@"r§ = new §4! §(0,0,0,0);
                     while(!(_loc2_ && this))
                     {
                        if(§+!b§.isCutSceneNext())
                        {
                           loop13:
                           while(_loc3_)
                           {
                              this.§[r§();
                              loop14:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    this.mNewScoreCounter = 0;
                                    while(_loc3_)
                                    {
                                       this.§5"G§ = false;
                                       while(!_loc2_)
                                       {
                                          §?!r§.§"#_§("LevelCompletedTheme1");
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                this.§@"r§.§""a§(0.7);
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop14;
                                                }
                                                continue loop14;
                                             }
                                             addr150:
                                             while(true)
                                             {
                                                §@;§.movieClip.addChildAt(this.§@"r§,§@;§.movieClip.numChildren - 1);
                                                break loop13;
                                             }
                                          }
                                       }
                                    }
                                    continue loop1;
                                    §§goto(addr122);
                                 }
                                 addr122:
                              }
                           }
                           continue;
                        }
                        this.§#N§();
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      private function §="B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[m§ = false;
            while(true)
            {
               this.setScoreData();
               addr92:
               while(true)
               {
                  this.§6!6§ = new Timer(500);
                  addr88:
                  while(true)
                  {
                     this.§-!t§ = 0;
                  }
                  addr38:
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr55:
                  }
               }
            }
            addr96:
         }
         while(true)
         {
            this.§6!6§.addEventListener(TimerEvent.TIMER,this.§-K§);
            while(true)
            {
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr96);
            }
            §§goto(addr92);
            if(_loc2_ && _loc1_)
            {
               continue;
            }
            if(!_loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr88);
         }
         §§goto(addr55);
      }
      
      protected function §>"e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(§+!b§.currentLevel) == 100)
            {
               addr73:
               (§@;§.getItemByName("MovieClip_ResultMEFeather") as §0"$§).mClip.gotoAndStop("On");
            }
            else
            {
               (§@;§.getItemByName("MovieClip_ResultMEFeather") as §0"$§).mClip.gotoAndStop("Off");
               if(!_loc2_)
               {
                  if(!(_loc1_ || _loc2_))
                  {
                     §§goto(addr73);
                  }
                  §§goto(addr19);
               }
            }
            addr19:
            return;
         }
         §§goto(addr73);
      }
      
      protected function § >§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(!this.§<!L§)
            {
               §@;§.setText("Best " + param2.toString(),"TextField_BestScore");
               loop0:
               while(!_loc4_)
               {
                  if(!(_loc5_ || param2))
                  {
                     §4#;§.singleton.dataModel.userProgress.§9!R§(§+!b§.currentLevel,param2);
                     while(true)
                     {
                        §@;§.setText("New Highscore!","TextField_BestScore");
                        break loop0;
                     }
                  }
                  else
                  {
                     addr241:
                     addr154:
                     addr145:
                     addr135:
                  }
                  continue;
                  this.§["%§ = §+!b§.getNumStarsForLevel(§+!b§.currentLevel,param2);
                  if(!_loc4_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§push(this.§["%§);
                        if(!(_loc4_ && this))
                        {
                           var _loc3_:* = §§pop();
                           if(!_loc4_)
                           {
                              §§push(1);
                              if(_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc4_ && this))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(0);
                                          if(_loc4_)
                                          {
                                             addr234:
                                          }
                                       }
                                       else
                                       {
                                          addr216:
                                          §§push(2);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§goto(addr234);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(2);
                                       if(_loc5_)
                                       {
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             addr194:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   addr197:
                                                   §§push(1);
                                                   if(_loc5_ || param2)
                                                   {
                                                      addr239:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).§-"I§("OneStar");
                                                            addr46:
                                                            break;
                                                            addr74:
                                                         case 1:
                                                            (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).§-"I§("TwoStar");
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            break;
                                                         case 2:
                                                            (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).§-"I§("ThreeStar");
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr74);
                                                               }
                                                               §§goto(addr46);
                                                            }
                                                      }
                                                      §§goto(addr241);
                                                      addr239:
                                                      addr205:
                                                   }
                                                   §§goto(addr239);
                                                }
                                                else
                                                {
                                                   §§goto(addr216);
                                                }
                                             }
                                             else
                                             {
                                                §§push(3);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(_loc3_);
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr239);
                                          }
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr216);
                                          }
                                          else
                                          {
                                             §§push(3);
                                          }
                                       }
                                    }
                                    §§goto(addr239);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr239);
                     }
                     else
                     {
                        addr149:
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§push(int(§§pop()));
                        }
                        param2 = §§pop();
                        §§goto(addr154);
                     }
                  }
                  continue;
                  return;
               }
               while(true)
               {
                  if(!(_loc5_ || this))
                  {
                     §§goto(addr145);
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr149);
         }
         §§goto(addr241);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§4#;§.singleton.dataModel.userProgress.getScoreForLevel(§+!b§.currentLevel));
         if(_loc8_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§,!q§.§>k§.getScore(10));
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            this.§<!L§ = _loc2_ > _loc1_;
            loop0:
            while(true)
            {
               addr56:
               while(true)
               {
                  this.§ >§(_loc2_,_loc1_);
                  addr61:
                  while(!_loc7_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§>"e§();
            if(!(_loc7_ && _loc1_))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr56);
            }
            §§goto(addr61);
         }
         §§push(§,!q§.§>k§.getEagleScore());
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(§+!b§.currentLevel));
         if(_loc8_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            if(_loc8_)
            {
               §§push(_loc3_);
               if(_loc8_)
               {
                  §§push(int(§§pop()));
                  if(_loc8_)
                  {
                     _loc4_ = §§pop();
                     if(!_loc7_)
                     {
                        addr120:
                        §§push(§4#;§.singleton);
                        if(_loc8_ || _loc2_)
                        {
                           §§push(§§pop().dataModel);
                           if(_loc8_ || _loc2_)
                           {
                              §§push(§§pop().userProgress);
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§pop().§]"D§(§+!b§.currentLevel,_loc4_);
                                 addr152:
                                 §§push(§4#;§.singleton.dataModel.userProgress);
                              }
                              §§push(§§pop().getStarsForLevel(§+!b§.currentLevel,_loc2_));
                              if(!_loc7_)
                              {
                                 addr159:
                                 §§push(int(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              if(_loc8_ || _loc2_)
                              {
                                 (§@;§.getItemByName("MovieClip_NewHighScoreBadge") as §0"$§).setVisibility(false);
                              }
                              while(true)
                              {
                                 (§@;§.getItemByName("MovieClip_StarLeft") as §0"$§).mClip.gotoAndStop("UnLit");
                                 while(!_loc7_)
                                 {
                                    (§@;§.getItemByName("MovieClip_StarCenter") as §0"$§).mClip.gotoAndStop("UnLit");
                                    while(_loc8_ || this)
                                    {
                                       (§@;§.getItemByName("MovieClip_StarRight") as §0"$§).mClip.gotoAndStop("UnLit");
                                       if(_loc8_)
                                       {
                                          return;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr152);
                  }
               }
               §§goto(addr159);
            }
            §§goto(addr120);
         }
         §§goto(addr152);
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§<!L§)
            {
               (§@;§.getItemByName("TextField_BestScore") as §6!D§).setVisibility(true);
               loop0:
               while(_loc1_)
               {
                  if(!_loc1_)
                  {
                     §@;§.setText("New Highscore!","TextField_NewHighScore");
                     do
                     {
                        (§@;§.getItemByName("TextField_NewHighScore") as §6!D§).setVisibility(true);
                        loop2:
                        while(true)
                        {
                           (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).setVisibility(false);
                           break loop0;
                           addr81:
                           while(true)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                     }
                     while(!_loc1_);
                     
                  }
                  else
                  {
                     addr19:
                     addr132:
                  }
                  continue;
                  while(true)
                  {
                     (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).setVisibility(true);
                     if(_loc2_ && _loc2_)
                     {
                        continue loop0;
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!(_loc1_ || this))
                        {
                           addr128:
                           §?!r§.§"#_§("Hiscore_Badge",§`O§);
                           break;
                        }
                        §§goto(addr19);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr132);
                  return;
               }
               while(true)
               {
                  this.§9"f§();
                  §§goto(addr81);
               }
            }
            §§goto(addr128);
         }
         §§goto(addr77);
      }
      
      protected function §9"f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§'!D§ = 0;
            while(true)
            {
               this.§2"J§ = 0;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§@1§ = §`">§;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §+#V§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x = (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x - this.§'!D§;
            loop0:
            while(true)
            {
               (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y = (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y - this.§2"J§;
               while(true)
               {
                  if(this.§@1§ > 0)
                  {
                     if(_loc2_ || param1)
                     {
                        §§push(this);
                        §§push(Math.random() - 0.5);
                        if(_loc2_ || param1)
                        {
                           §§push(this.§@1§);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop() / §`">§);
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc2_ || this)
                           {
                              addr206:
                              §§push(§§pop() * 20);
                           }
                           §§pop().§'!D§ = §§pop();
                           loop2:
                           for(; !_loc3_; if(!(_loc2_ || _loc3_))
                           {
                              continue;
                           },(§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y = (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y + this.§2"J§,do
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§@1§);
                                 if(_loc2_ || param1)
                                 {
                                    §§push(param1);
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(§§pop() / 10);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§pop().§@1§ = §§pop();
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    break;
                                 }
                                 loop7:
                                 while(!(_loc2_ || _loc3_))
                                 {
                                    while(_loc2_)
                                    {
                                       this.§2"J§ = 0;
                                       continue loop7;
                                    }
                                    continue loop0;
                                 }
                                 addr74:
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                           }
                           while(_loc3_);
                           ,§§goto(addr55))
                           {
                              §§push(this);
                              §§push(Math.random() - 0.5);
                              if(_loc2_)
                              {
                                 §§push(this.§@1§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() / §`">§);
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() * 20);
                                 }
                              }
                              §§pop().§2"J§ = §§pop();
                              loop3:
                              while(true)
                              {
                                 (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x = (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x + this.§'!D§;
                                 do
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 while(!(_loc2_ || _loc2_));
                                 
                                 return;
                              }
                           }
                           continue;
                           addr209:
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr209);
                  }
                  else
                  {
                     this.§'!D§ = 0;
                  }
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §-K§(param1:TimerEvent) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:String = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc4_:Number = §+!b§.getGoldScoreForLevel(§+!b§.currentLevel);
         var _loc5_:Number = §+!b§.getSilverScoreForLevel(§+!b§.currentLevel);
         if(!_loc12_)
         {
            if((§@;§.getItemByName("MovieClip_StarLeft") as §0"$§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§]!w§);
               loop0:
               for(; !(_loc12_ && _loc3_); §§push(this.§]!w§),if(_loc12_ && this)
               {
                  continue;
               },if(!_loc12_)
               {
                  §§goto(addr500);
               },§§goto(addr850))
               {
                  §§push(§§pop().getValue());
                  while(true)
                  {
                     if(_loc13_ || param1)
                     {
                        §§push(_loc5_);
                        while(true)
                        {
                           §§push(§§pop() >= §§pop());
                           addr687:
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          §§push((§@;§.getItemByName("MovieClip_StarCenter") as §0"$§).mClip.currentLabel == "UnLit");
                                          while(!(_loc12_ && this))
                                          {
                                             addr185:
                                             if(!(_loc13_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(!(_loc13_ || this))
                                             {
                                                continue loop3;
                                             }
                                             loop21:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   (§@;§.getItemByName("MovieClip_NewHighScoreBadge") as §0"$§).setVisibility(false);
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(!(_loc12_ && this))
                                                      {
                                                         if(_loc13_ || param1)
                                                         {
                                                            loop23:
                                                            while(true)
                                                            {
                                                               this.§8S§ = §-#C§.§%!E§.§^!H§((§@;§.getItemByName("MovieClip_NewHighScoreBadge") as §0"$§).mClip,{
                                                                  "scaleX":1,
                                                                  "scaleY":1
                                                               },{
                                                                  "scaleX":7,
                                                                  "scaleY":7
                                                               },0.1);
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§8S§);
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§pop().onComplete = this.onBadgeLanded;
                                                                              if(!_loc12_)
                                                                              {
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 if(!(_loc12_ && this))
                                                                                 {
                                                                                    if(_loc13_ || param1)
                                                                                    {
                                                                                       §§push(this.§8S§);
                                                                                       if(!(_loc12_ && _loc2_))
                                                                                       {
                                                                                          §§pop().play();
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(_loc13_ || _loc3_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr383:
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      if(!(_loc12_ && param1))
                                                                                                      {
                                                                                                         if(!(_loc12_ && this))
                                                                                                         {
                                                                                                            this.§0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,_loc2_,_loc3_,§<#A§.§?b§,§<#A§.§&"m§,_loc9_);
                                                                                                            if(_loc13_ || _loc2_)
                                                                                                            {
                                                                                                               if(!(_loc12_ && this))
                                                                                                               {
                                                                                                                  §@;§.addChild(this.§0!r§);
                                                                                                                  addr310:
                                                                                                                  if(_loc12_ && this)
                                                                                                                  {
                                                                                                                     §§push(Number((§@;§.getItemByName("MovieClip_StarRight") as §0"$§).y + (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y));
                                                                                                                     if(!(_loc12_ && this))
                                                                                                                     {
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              if(_loc13_ || _loc2_)
                                                                                                                              {
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 §§goto(addr383);
                                                                                                                              }
                                                                                                                              addr845:
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              loop32:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(§§pop() <= §§pop())
                                                                                                                                    {
                                                                                                                                       continue loop32;
                                                                                                                                    }
                                                                                                                                    addr795:
                                                                                                                                    addr811:
                                                                                                                                    this.§3!F§ = §-#C§.§%!E§.§^!H§(this,{"mNewScoreCounter":this.§]!w§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                                                                                    §§push(this.§3!F§);
                                                                                                                                    do
                                                                                                                                    {
                                                                                                                                       §§pop().onComplete = this.§?!z§;
                                                                                                                                       §§push(this.§3!F§);
                                                                                                                                    }
                                                                                                                                    while(_loc12_);
                                                                                                                                    
                                                                                                                                    §§pop().play();
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       break loop26;
                                                                                                                                       addr777:
                                                                                                                                       addr778:
                                                                                                                                       addr776:
                                                                                                                                    }
                                                                                                                                    _loc7_ = this.§;"G§();
                                                                                                                                    §§push(Number((§@;§.getItemByName("MovieClip_StarLeft") as §0"$§).x + (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x));
                                                                                                                                    while(!_loc12_)
                                                                                                                                    {
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          break loop24;
                                                                                                                                       }
                                                                                                                                       addr844:
                                                                                                                                       addr844:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr845);
                                                                                                                                       }
                                                                                                                                       if(!(_loc13_ || this))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       if(!(_loc12_ && param1))
                                                                                                                                       {
                                                                                                                                          this.§0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,_loc2_,_loc3_,§<#A§.§=!D§,§<#A§.§&"m§,_loc7_);
                                                                                                                                          §@;§.addChild(this.§0!r§);
                                                                                                                                          this.§%#>§.push(this.§0!r§);
                                                                                                                                          addr877:
                                                                                                                                          var _loc10_:*;
                                                                                                                                          §§push((_loc10_ = this).§-!t§);
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + 1);
                                                                                                                                          }
                                                                                                                                          var _loc11_:* = §§pop();
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             _loc10_.§-!t§ = _loc11_;
                                                                                                                                          }
                                                                                                                                          break loop26;
                                                                                                                                          addr697:
                                                                                                                                          addr720:
                                                                                                                                          addr703:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr861:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr850:
                                                                                                                                          addr855:
                                                                                                                                          this.§]!w§.§3"Q§(§,!q§.§>k§.getScore(10));
                                                                                                                                          addr855:
                                                                                                                                          §§push(this.§]!w§);
                                                                                                                                          break loop0;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr843:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr844);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr624:
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              addr591:
                                                                                                                              §§push(Number((§@;§.getItemByName("MovieClip_StarCenter") as §0"$§).y + (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y));
                                                                                                                              if(_loc13_ || this)
                                                                                                                              {
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 addr599:
                                                                                                                                 if(_loc13_ || param1)
                                                                                                                                 {
                                                                                                                                    if(!_loc12_)
                                                                                                                                    {
                                                                                                                                       this.§0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,_loc2_,_loc3_,§<#A§.§!&§,§<#A§.§&"m§,_loc8_);
                                                                                                                                       addr568:
                                                                                                                                       if(_loc13_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §@;§.addChild(this.§0!r§);
                                                                                                                                          addr549:
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             this.§%#>§.push(this.§0!r§);
                                                                                                                                             addr536:
                                                                                                                                             if(!(_loc13_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                addr647:
                                                                                                                                                if(!(_loc12_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr656:
                                                                                                                                                   §§push(this.§`"h§());
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                      addr660:
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr624);
                                                                                                                                                            §§push(Number((§@;§.getItemByName("MovieClip_StarCenter") as §0"$§).x + (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr744);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr697);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr777);
                                                                                                                                                }
                                                                                                                                                §§goto(addr778);
                                                                                                                                             }
                                                                                                                                             §§goto(addr877);
                                                                                                                                             addr543:
                                                                                                                                          }
                                                                                                                                          §§goto(addr720);
                                                                                                                                       }
                                                                                                                                       §§goto(addr703);
                                                                                                                                    }
                                                                                                                                    this.§6!6§.delay = 1000;
                                                                                                                                    §§goto(addr861);
                                                                                                                                    addr876:
                                                                                                                                 }
                                                                                                                                 §§goto(addr855);
                                                                                                                              }
                                                                                                                              addr827:
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              §§goto(addr795);
                                                                                                                              addr627:
                                                                                                                           }
                                                                                                                           §§goto(addr736);
                                                                                                                        }
                                                                                                                        §§goto(addr591);
                                                                                                                     }
                                                                                                                     addr415:
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr416:
                                                                                                                     §§goto(addr416);
                                                                                                                  }
                                                                                                                  this.§%#>§.push(this.§0!r§);
                                                                                                                  §§goto(addr877);
                                                                                                                  addr304:
                                                                                                               }
                                                                                                               §§goto(addr599);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr818);
                                                                                                      }
                                                                                                      §§goto(addr660);
                                                                                                   }
                                                                                                   §§goto(addr627);
                                                                                                }
                                                                                                §§goto(addr877);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr210:
                                                                                                while(_loc13_ || _loc2_)
                                                                                                {
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      §§goto(addr304);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr286:
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         if(_loc13_ || _loc3_)
                                                                                                         {
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               §§goto(addr877);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr536);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr476:
                                                                                                            if(!(_loc12_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  §§push(this.§!B§());
                                                                                                                  if(!(_loc12_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(_loc13_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc13_ || this)
                                                                                                                        {
                                                                                                                           addr452:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc13_ || _loc2_)
                                                                                                                           {
                                                                                                                              _loc9_ = §§pop();
                                                                                                                              §§goto(addr415);
                                                                                                                              §§push(Number((§@;§.getItemByName("MovieClip_StarRight") as §0"$§).x + (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x));
                                                                                                                              addr460:
                                                                                                                           }
                                                                                                                           §§goto(addr656);
                                                                                                                        }
                                                                                                                        §§goto(addr776);
                                                                                                                     }
                                                                                                                     §§goto(addr656);
                                                                                                                  }
                                                                                                                  §§goto(addr452);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr871:
                                                                                                                  §?!r§.§"#_§("Hiscore_Count",§0,§,100);
                                                                                                               }
                                                                                                               §§goto(addr876);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr591);
                                                                                                      }
                                                                                                      §§goto(addr310);
                                                                                                   }
                                                                                                }
                                                                                                loop16:
                                                                                                for(; _loc13_; §§goto(addr210))
                                                                                                {
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      if(!(_loc12_ && param1))
                                                                                                      {
                                                                                                         §§push(this.§<!L§);
                                                                                                         loop17:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc12_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  loop19:
                                                                                                                  for(; _loc13_; if(_loc12_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },if(_loc12_)
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  },§§goto(addr169),§§push(!§§pop()))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     loop20:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc12_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 §§push(this.§[m§);
                                                                                                                                 if(!(_loc12_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 addr169:
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 addr171:
                                                                                                                                 if(_loc13_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc13_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr185);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          addr529:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push((§@;§.getItemByName("MovieClip_StarRight") as §0"$§).mClip.currentLabel == "UnLit");
                                                                                                                                             addr471:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr472:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§5"G§);
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   this.§%!x§ = true;
                                                                                                                                                   §§goto(addr476);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr528:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(!(_loc12_ && this))
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr283:
                                                                                                                                       this.§5"G§ = true;
                                                                                                                                       break loop20;
                                                                                                                                    }
                                                                                                                                    this.§6!6§.stop();
                                                                                                                                    continue loop16;
                                                                                                                                    §§goto(addr171);
                                                                                                                                 }
                                                                                                                                 §§goto(addr472);
                                                                                                                              }
                                                                                                                              §§goto(addr811);
                                                                                                                           }
                                                                                                                           §§goto(addr473);
                                                                                                                        }
                                                                                                                        §§goto(addr283);
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     §§goto(addr286);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr528);
                                                                                                                  }
                                                                                                                  §§goto(addr471);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr568);
                                                                                                   }
                                                                                                   §§goto(addr529);
                                                                                                }
                                                                                                addr210:
                                                                                                §§goto(addr460);
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 addr201:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       (§@;§.getItemByName("MovieClip_NewHighScoreBadge") as §0"$§).setVisibility(true);
                                                                                       §§goto(addr210);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr549);
                                                                              }
                                                                              break;
                                                                           }
                                                                           return;
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop22;
                                                               }
                                                               §§goto(addr736);
                                                            }
                                                         }
                                                         §§goto(addr794);
                                                      }
                                                      §§goto(addr240);
                                                   }
                                                }
                                                §§goto(addr201);
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 while(!§§pop())
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr647);
                              }
                           }
                        }
                        addr686:
                     }
                     §§push(§§pop().getValue());
                     addr500:
                     break;
                     if(!(_loc13_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc13_ || _loc2_)
                     {
                        §§push(_loc4_);
                        if(!_loc12_)
                        {
                           addr834:
                           if(_loc13_ || this)
                           {
                              §§goto(addr526);
                              §§push(§§pop() >= §§pop());
                           }
                           §§push(§§pop() / §§pop());
                           if(!(_loc12_ && _loc3_))
                           {
                              §§goto(addr843);
                              §§push(2);
                           }
                           §§goto(addr844);
                        }
                        else
                        {
                           §§goto(addr686);
                        }
                     }
                     §§goto(addr834);
                     §§push(_loc4_);
                  }
                  §§goto(addr827);
                  §§push(Number(§§pop()));
               }
               while(true)
               {
                  §§goto(addr833);
                  §§goto(addr855);
               }
            }
            §§goto(addr871);
         }
         §§goto(addr543);
      }
      
      protected function §;"G§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?!r§.§"#_§("Hiscore_Star_Splash1",§`O§);
         }
         do
         {
            (§@;§.getItemByName("MovieClip_StarLeft") as §0"$§).mClip.gotoAndStop("Lit");
         }
         while(_loc1_);
         
         return §1"M§.§-!g§;
      }
      
      protected function §`"h§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?!r§.§"#_§("Hiscore_Star_Splash2",§`O§);
            do
            {
               (§@;§.getItemByName("MovieClip_StarCenter") as §0"$§).mClip.gotoAndStop("Lit");
            }
            while(!_loc2_);
            
         }
         return §1"M§.§-!g§;
      }
      
      protected function §!B§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §?!r§.§"#_§("Hiscore_Star_Splash3",§`O§);
            do
            {
               (§@;§.getItemByName("MovieClip_StarRight") as §0"$§).mClip.gotoAndStop("Lit");
            }
            while(_loc2_ && _loc2_);
            
         }
         return §1"M§.§-!g§;
      }
      
      private function §?!z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §?!r§.§9"4§(§0,§);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§<#A§ = null;
         if(!_loc6_)
         {
            super.update(param1);
         }
         loop0:
         while(true)
         {
            addr33:
            addr52:
            while(true)
            {
               §@;§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
               continue loop0;
            }
            addr85:
            var _loc3_:int = 0;
            for each(_loc2_ in this.§%#>§)
            {
               if(!(_loc6_ && param1))
               {
                  _loc2_.update(param1);
               }
            }
            if(!_loc6_)
            {
               if(this.§@1§ >= 0)
               {
                  if(_loc5_)
                  {
                     addr135:
                     this.§+#V§(param1);
                  }
                  while(true)
                  {
                     addr108:
                     if(_loc6_ && _loc3_)
                     {
                        continue;
                     }
                     §,!q§.§9!,§.clearLevel();
                     addr92:
                     return;
                     addr118:
                  }
                  addr138:
               }
               while(true)
               {
                  if(nextState.length > 0)
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§goto(addr108);
                     }
                     §§goto(addr118);
                  }
                  break;
                  §§goto(addr138);
               }
               §§goto(addr92);
            }
            §§goto(addr135);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
            while(true)
            {
               this.§"#V§();
               while(true)
               {
                  this.§@1§ = 0;
                  loop2:
                  while(_loc1_)
                  {
                     this.mNewScoreCounter = 0;
                     loop3:
                     while(true)
                     {
                        §§push(this.§3!F§);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§3!F§);
                                 addr191:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    addr192:
                                    loop22:
                                    while(true)
                                    {
                                       this.§3!F§ = null;
                                       addr178:
                                       do
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop22;
                                          }
                                       }
                                       while(_loc1_);
                                       
                                       continue loop2;
                                    }
                                 }
                              }
                              addr189:
                           }
                           while(true)
                           {
                              §§push(this.§8S§);
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§8S§);
                                       addr172:
                                       while(true)
                                       {
                                          §§pop().stop();
                                          addr173:
                                          while(true)
                                          {
                                             this.§8S§ = null;
                                             addr163:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                    addr170:
                                 }
                                 while(true)
                                 {
                                    §?!r§.§9"4§(§0,§);
                                    addr158:
                                    while(true)
                                    {
                                       this.§7b§(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       addr144:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          §§goto(addr170);
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr163);
                                 }
                              }
                              §§goto(addr172);
                              §§goto(addr182);
                           }
                        }
                        §§goto(addr191);
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      protected function §7b§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§@;§.getItemByName("Button_Menu") as §^"m§).setComponentVisualState(param1);
         }
         loop0:
         while(true)
         {
            (§@;§.getItemByName("Button_Replay") as §^"m§).setComponentVisualState(param1);
            while(true)
            {
               (§@;§.getItemByName("Button_NextLevel") as §^"m§).setComponentVisualState(param1);
               while(_loc2_)
               {
                  if(_loc2_)
                  {
                     (§@;§.getItemByName("Button_CutScene") as §^"m§).setComponentVisualState(param1);
                     if(!(_loc3_ && param1))
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
      
      private function §"#V§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§<#A§ = null;
         if(!_loc5_)
         {
            if(this.§6!6§)
            {
               if(_loc4_)
               {
                  addr31:
                  this.§6!6§.stop();
               }
               try
               {
                  this.§6!6§.removeEventListener(TimerEvent.TIMER,this.§-K§);
                  if(!(_loc5_ && this))
                  {
                     addr62:
                     var _loc2_:int = 0;
                     if(_loc4_)
                     {
                        var _loc3_:* = this.§%#>§;
                        if(_loc4_)
                        {
                           loop0:
                           while(§§hasnext(_loc3_,_loc2_))
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_ && _loc1_)
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[1].§%!G§();
                                    if(!_loc5_)
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(true)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             if(!§@;§.contains(splash))
                                             {
                                                continue loop6;
                                             }
                                          }
                                          addr105:
                                       }
                                       while(!_loc5_)
                                       {
                                          §@;§.removeChild(splash);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr105);
                                       }
                                       addr126:
                                    }
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           addr130:
                           if(!(_loc5_ && _loc1_))
                           {
                              this.§%#>§ = new Vector.<§<#A§>();
                              do
                              {
                                 this.§?N§();
                              }
                              while(!(_loc4_ || this));
                              
                              return;
                              addr163:
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr163);
               }
               catch(e:Error)
               {
               }
            }
            §§goto(addr62);
         }
         §§goto(addr31);
      }
      
      protected function §?N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            (§@;§.getItemByName("TextField_BestScore") as §6!D§).setVisibility(false);
            while(true)
            {
               (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).setVisibility(false);
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            (§@;§.getItemByName("TextField_NewHighScore") as §6!D§).setVisibility(false);
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
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
      
      protected function loadNextLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §'$§();
            do
            {
               § g§(this.getCutSceneState());
            }
            while(_loc2_);
            
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               if("NEXT_LEVEL" === _loc5_)
               {
                  if(!(_loc6_ && param2))
                  {
                     §§push(0);
                     if(_loc6_ && param3)
                     {
                        addr172:
                     }
                  }
                  else
                  {
                     addr169:
                     §§push(2);
                     if(_loc7_)
                     {
                        §§goto(addr172);
                     }
                  }
               }
               else if("REPLAY" === _loc5_)
               {
                  if(_loc7_)
                  {
                     §§push(1);
                     if(_loc6_)
                     {
                        §§goto(addr172);
                     }
                  }
                  else
                  {
                     §§goto(addr169);
                  }
               }
               else
               {
                  if("WATCH_REPLAY" === _loc5_)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr169);
                     }
                     addr208:
                     switch(§§pop())
                     {
                        case 0:
                           this.loadNextLevel();
                           break;
                        case 1:
                           § g§(this.getStateLevelLoadState());
                           break loop0;
                           addr123:
                        case 2:
                           § g§(this.getStateLevelLoadState());
                           if(_loc7_ || param2)
                           {
                              if(!_loc6_)
                              {
                                 §§push(§,!q§.§9!,§);
                                 if(_loc7_ || param2)
                                 {
                                    §§push(§§pop().§#!M§());
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          continue;
                                       }
                                       §§push(_loc4_ = §§pop());
                                       if(_loc6_)
                                       {
                                          continue;
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       addr84:
                                       §,!q§.§9!,§.§ r§(_loc4_);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       addr82:
                                    }
                                    break loop0;
                                 }
                                 §§goto(addr84);
                              }
                              else
                              {
                                 §§goto(addr123);
                              }
                           }
                           break loop0;
                        case 3:
                           §?!r§.§0"#§();
                           addr47:
                           § g§(this.getMenuButtonTargetState());
                           if(_loc7_)
                           {
                              break loop0;
                           }
                           break loop0;
                           addr60:
                        case 4:
                           §4#;§.singleton.§5"q§();
                           if(_loc7_)
                           {
                              if(!(_loc6_ && param3))
                              {
                                 if(_loc7_)
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       if(true)
                                       {
                                          break loop0;
                                       }
                                       §§goto(addr47);
                                    }
                                    else
                                    {
                                       §§goto(addr82);
                                    }
                                 }
                                 §§goto(addr84);
                              }
                              else
                              {
                                 §§goto(addr60);
                              }
                           }
                     }
                     break;
                  }
                  if("MENU" === _loc5_)
                  {
                     if(_loc7_)
                     {
                        §§push(3);
                        if(_loc6_ && this)
                        {
                        }
                     }
                  }
                  else if("FULLSCREEN_BUTTON" !== _loc5_)
                  {
                     §§goto(addr208);
                     §§push(5);
                  }
                  §§goto(addr208);
                  if(_loc6_)
                  {
                  }
               }
               §§goto(addr208);
            }
            §§goto(addr169);
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §<2§.§^!7§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§^!7§;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §+#?§.§^!7§;
      }
   }
}
