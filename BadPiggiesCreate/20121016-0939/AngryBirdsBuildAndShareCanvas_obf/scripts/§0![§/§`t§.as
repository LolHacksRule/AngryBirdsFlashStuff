package §0![§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'@§.§^J§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §[!w§.§4!i§;
   import §[!w§.§@!I§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §`t§ extends §5y§
   {
      
      public static const §'=§:String = "LevelEndStateRio";
      
      public static const §^B§:Number = 30;
      
      protected static const §2!_§:String = "ScoreLoopCountChannel";
      
      protected static const §^!4§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'=§ = "LevelEndStateRio";
            while(true)
            {
               §^B§ = 30;
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            §2!_§ = "ScoreLoopCountChannel";
            do
            {
               §^!4§ = "EndScreenEffectChannel";
            }
            while(!_loc2_);
            
            if(!(_loc1_ && §`t§))
            {
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §?""§:§3^§;
      
      private var §7!-§:Number;
      
      private var §[H§:Number = 0.0;
      
      private var §-q§:Number = 0.0;
      
      private var §=l§:Boolean = false;
      
      private var §^K§:Timer;
      
      private var §?!+§:§4!i§;
      
      protected var §+!q§:Array;
      
      protected var §7d§:§@!I§;
      
      protected var § !Q§:Vector.<§@!I§>;
      
      public var mNewScoreCounter:int;
      
      private var §@!6§:int;
      
      private var §!!S§:Boolean;
      
      protected var §4@§:Boolean;
      
      private var §3!z§:§^J§;
      
      protected var §-!a§:Boolean;
      
      private var §^!9§:§3^§;
      
      protected var §%"&§:Boolean;
      
      protected var §=!1§:int;
      
      public function §`t§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§+!q§ = [];
            do
            {
               this.§3!z§ = new §^J§();
               do
               {
                  super(param1,param2);
               }
               while(!_loc3_);
               
            }
            while(_loc4_ && _loc3_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §?E§ = new §'s§(this);
               addr108:
               while(true)
               {
                  §?E§.init(this.§+C§());
                  while(_loc1_)
                  {
                     this.§=!0§();
                     if(_loc1_ || _loc2_)
                     {
                        return;
                        addr60:
                     }
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            this.§ !Q§ = new Vector.<§@!I§>();
            while(true)
            {
               if(_loc1_)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop3;
            }
            §§goto(addr108);
         }
         §§goto(addr60);
      }
      
      protected function §=!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§+!q§);
            loop0:
            while(true)
            {
               §§pop().push((§?E§.getItemByName("Button_Menu") as §="#§).x);
               loop1:
               while(true)
               {
                  §§push(this.§+!q§);
                  while(true)
                  {
                     §§pop().push((§?E§.getItemByName("Button_Replay") as §="#§).x);
                     addr86:
                     while(!_loc1_)
                     {
                     }
                     continue loop1;
                     addr29:
                     if(_loc2_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr66);
         }
      }
      
      protected function §+C§() : XML
      {
         return §`7§.§>"?§.Views.View_LevelEndRio[0];
      }
      
      protected function §@!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(AngryBirdsFP11.§>" §.§6&§(§3!w§.§%n§))
            {
               (§?E§.getItemByName("Button_Menu") as §="#§).setVisibility(true);
               while(!_loc1_)
               {
                  if(_loc2_ || _loc1_)
                  {
                     (§?E§.getItemByName("Button_Replay") as §="#§).setVisibility(true);
                     while(true)
                     {
                        (§?E§.getItemByName("Button_NextLevel") as §="#§).setVisibility(false);
                        loop2:
                        while(!(_loc1_ && _loc1_))
                        {
                           (§?E§.getItemByName("Button_CutScene") as §="#§).setVisibility(true);
                           loop3:
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 if(!_loc1_)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       while(true)
                                       {
                                          (§?E§.getItemByName("Button_Menu") as §="#§).x = this.§+!q§[0];
                                          loop7:
                                          while(_loc2_)
                                          {
                                             (§?E§.getItemByName("Button_Replay") as §="#§).x = this.§+!q§[1];
                                             while(true)
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   if(!(_loc2_ || this))
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop7;
                                             }
                                             §§goto(addr20);
                                          }
                                          continue loop3;
                                       }
                                       addr106:
                                    }
                                    addr222:
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          (§?E§.getItemByName("Button_Replay") as §="#§).setVisibility(true);
                                          §§goto(addr242);
                                       }
                                       addr266:
                                    }
                                    (§?E§.getItemByName("Button_Replay") as §="#§).x = this.§+!q§[0] + Math.abs(this.§+!q§[1] - this.§+!q§[0]) / 2;
                                    break;
                                    addr224:
                                 }
                                 break;
                              }
                              continue loop2;
                           }
                           (§?E§.getItemByName("Button_CutScene") as §="#§).x = this.§+!q§[1] + Math.abs(this.§+!q§[2] - this.§+!q§[1]) / 2;
                           §§goto(addr187);
                        }
                     }
                  }
                  else
                  {
                     addr259:
                     (§?E§.getItemByName("Button_Menu") as §="#§).setVisibility(false);
                  }
                  §§goto(addr266);
               }
               while(true)
               {
                  (§?E§.getItemByName("Button_CutScene") as §="#§).setVisibility(true);
                  §§goto(addr222);
                  §§goto(addr242);
               }
               §§goto(addr224);
            }
            §§goto(addr259);
         }
         §§goto(addr106);
      }
      
      protected function §;! §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§?E§.getItemByName("Button_Menu") as §="#§).setVisibility(true);
            loop0:
            while(true)
            {
               (§?E§.getItemByName("Button_Replay") as §="#§).setVisibility(true);
               loop1:
               while(true)
               {
                  (§?E§.getItemByName("Button_CutScene") as §="#§).setVisibility(false);
                  loop2:
                  do
                  {
                     if(!§3!w§.§;d§())
                     {
                        (§?E§.getItemByName("Button_NextLevel") as §="#§).setVisibility(false);
                        loop3:
                        while(_loc2_)
                        {
                           (§?E§.getItemByName("Button_Menu") as §="#§).x = this.§+!q§[0] + Math.abs(this.§+!q§[1] - this.§+!q§[0]) / 2;
                           for(; !_loc1_; (§?E§.getItemByName("Button_Replay") as §="#§).x = this.§+!q§[1] + Math.abs(this.§+!q§[2] - this.§+!q§[1]) / 2,if(!_loc2_)
                           {
                              continue;
                           },if(_loc1_)
                           {
                              continue loop3;
                           },if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 addr20:
                                 return;
                                 addr57:
                              }
                              continue loop1;
                           },§§goto(addr148))
                           {
                              if(!(_loc1_ && this))
                              {
                                 continue;
                              }
                              loop5:
                              while(true)
                              {
                                 (§?E§.getItemByName("Button_Menu") as §="#§).x = this.§+!q§[0];
                                 addr160:
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop5;
                                    }
                                    (§?E§.getItemByName("Button_Replay") as §="#§).x = this.§+!q§[1];
                                    while(true)
                                    {
                                       (§?E§.getItemByName("Button_NextLevel") as §="#§).x = this.§+!q§[2];
                                       continue loop6;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr160);
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr167);
                  }
                  while(_loc1_ && this);
                  
                  §§goto(addr20);
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.activate();
            while(true)
            {
               this.§%"&§ = false;
               loop1:
               for(; !(_loc1_ && _loc2_); if(_loc1_ && _loc2_)
               {
                  continue;
               },this.§[H§ = 0,§§goto(addr67))
               {
                  §=!X§.pause();
                  loop2:
                  while(true)
                  {
                     this.§?!+§ = new §4!i§(0,0,0,0);
                     loop3:
                     while(true)
                     {
                        §?E§.movieClip.addChildAt(this.§?!+§,§?E§.movieClip.numChildren - 1);
                        loop4:
                        while(true)
                        {
                           if(§3!w§.§4k§())
                           {
                              while(true)
                              {
                                 this.§@!q§();
                                 addr147:
                                 while(true)
                                 {
                                 }
                              }
                              addr145:
                           }
                           else
                           {
                              this.§;! §();
                              addr140:
                              while(true)
                              {
                              }
                              addr140:
                           }
                           loop7:
                           while(true)
                           {
                              this.mNewScoreCounter = 0;
                              loop8:
                              while(!_loc1_)
                              {
                                 this.§!!S§ = false;
                                 while(_loc2_)
                                 {
                                    §5!U§.playSound("LevelCompletedTheme1");
                                    while(!(_loc1_ && _loc2_))
                                    {
                                       this.§?!+§.§>=§(0.7);
                                       loop11:
                                       while(_loc2_)
                                       {
                                          continue loop1;
                                          while(true)
                                          {
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                continue loop11;
                                             }
                                             if(_loc1_ && _loc1_)
                                             {
                                                break;
                                             }
                                             if(_loc2_)
                                             {
                                                this.§-q§ = 0;
                                                continue;
                                             }
                                             §§goto(addr145);
                                          }
                                          continue loop7;
                                       }
                                       continue loop4;
                                    }
                                    continue loop8;
                                    if(_loc1_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    if(!_loc1_)
                                    {
                                       §§goto(addr62);
                                    }
                                    §§goto(addr147);
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      private function §!_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4@§ = false;
            loop0:
            while(true)
            {
               this.§""1§();
               loop1:
               while(true)
               {
                  this.§^K§ = new Timer(500);
                  loop2:
                  while(true)
                  {
                     this.§@!6§ = 0;
                     while(true)
                     {
                        this.§^K§.addEventListener(TimerEvent.TIMER,this.§`"0§);
                        while(_loc1_ || this)
                        {
                           continue loop2;
                           this.§^K§.start();
                           if(!_loc2_)
                           {
                              if(_loc1_)
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
         }
      }
      
      protected function §?![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(AngryBirdsFP11.§>" §.§2?§(§3!w§.§%n§) == 100)
            {
               addr81:
               (§?E§.getItemByName("MovieClip_ResultMEFeather") as §%+§).mClip.gotoAndStop("On");
            }
            else
            {
               (§?E§.getItemByName("MovieClip_ResultMEFeather") as §%+§).mClip.gotoAndStop("Off");
               if(_loc1_ || _loc1_)
               {
                  if(!(_loc1_ || _loc2_))
                  {
                     §§goto(addr81);
                  }
                  §§goto(addr24);
               }
            }
            addr24:
            return;
         }
         §§goto(addr81);
      }
      
      protected function §0N§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            if(!this.§-!a§)
            {
               §?E§.setText("Best " + param2.toString(),"TextField_BestScore");
               do
               {
                  this.§=!1§ = §3!w§.§^"3§(§3!w§.§%n§,param2);
               }
               while(_loc4_);
               
               if(!(_loc4_ && this))
               {
                  §§push(this.§=!1§);
                  if(!(_loc4_ && param1))
                  {
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && this))
                     {
                        §§push(1);
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || this)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    addr182:
                                    §§push(0);
                                    if(_loc5_)
                                    {
                                       addr233:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).§^Q§("OneStar");
                                             addr46:
                                             break;
                                             addr74:
                                          case 1:
                                             (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).§^Q§("TwoStar");
                                             addr56:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                break;
                                             }
                                             §§goto(addr74);
                                             break;
                                          case 2:
                                             (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).§^Q§("ThreeStar");
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && param2))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr56);
                                                }
                                                §§goto(addr46);
                                             }
                                       }
                                       return;
                                       addr232:
                                    }
                                    else
                                    {
                                       addr227:
                                       §§goto(addr232);
                                    }
                                 }
                                 else
                                 {
                                    addr209:
                                    §§push(2);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§goto(addr227);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(!_loc4_)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr197:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(1);
                                             if(!_loc5_)
                                             {
                                             }
                                             §§goto(addr232);
                                          }
                                          else
                                          {
                                             §§goto(addr209);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(!_loc4_)
                                          {
                                             addr208:
                                             if(§§pop() === _loc3_)
                                             {
                                                §§goto(addr209);
                                             }
                                             else
                                             {
                                                §§goto(addr232);
                                                §§push(3);
                                             }
                                             §§goto(addr232);
                                          }
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr208);
                                 }
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr232);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr233);
               }
               else
               {
                  loop1:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        continue;
                     }
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr137:
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc4_)
                           {
                              §§push(int(§§pop()));
                           }
                           param2 = §§pop();
                        }
                     }
                     while(true)
                     {
                        AngryBirdsFP11.§>" §.§0!§(§3!w§.§%n§,param2);
                        continue loop1;
                     }
                  }
                  addr125:
               }
               §§goto(addr233);
            }
            §§goto(addr137);
         }
         §§goto(addr125);
      }
      
      protected function §""1§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(AngryBirdsFP11.§>" §.§%"0§(§3!w§.§%n§));
         if(_loc8_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§=!X§.§#H§.getScore());
         if(_loc8_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && _loc2_))
         {
            this.§-!a§ = _loc2_ > _loc1_;
            loop0:
            while(true)
            {
               addr70:
               while(true)
               {
                  this.§0N§(_loc2_,_loc1_);
                  continue loop0;
               }
            }
            addr81:
         }
         while(true)
         {
            this.§?![§();
            if(_loc7_ && _loc2_)
            {
               continue;
            }
            if(!(_loc7_ && this))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr81);
            }
            §§goto(addr70);
         }
         §§push(§=!X§.§#H§.getEagleScore());
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(AngryBirdsFP11.§>" §.§2?§(§3!w§.§%n§));
         if(_loc8_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            if(_loc8_ || _loc2_)
            {
               §§push(_loc3_);
               if(!_loc7_)
               {
                  §§push(int(§§pop()));
                  if(!_loc7_)
                  {
                     _loc4_ = §§pop();
                     if(_loc8_)
                     {
                        addr135:
                        §§push(AngryBirdsFP11.§>" §);
                        if(_loc8_)
                        {
                           §§push(§3!w§.§%n§);
                           if(_loc8_ || _loc2_)
                           {
                              §§push(_loc4_);
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§pop().each(§§pop(),§§pop());
                                 addr161:
                                 §§push(AngryBirdsFP11.§>" §);
                                 §§push(§3!w§.§%n§);
                                 §§push(_loc2_);
                              }
                              §§push(§§pop().§&!;§(§§pop(),§§pop()));
                              if(!_loc7_)
                              {
                                 addr165:
                                 §§push(int(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              if(!(_loc7_ && _loc2_))
                              {
                                 (§?E§.getItemByName("MovieClip_NewHighScoreBadge") as §%+§).setVisibility(false);
                                 loop3:
                                 do
                                 {
                                    (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.gotoAndStop("UnLit");
                                    while(true)
                                    {
                                       (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.gotoAndStop("UnLit");
                                       while(!(_loc7_ && _loc3_))
                                       {
                                          (§?E§.getItemByName("MovieClip_StarRight") as §%+§).mClip.gotoAndStop("UnLit");
                                          if(!_loc7_)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                                 while(!(_loc8_ || this));
                                 
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr161);
                  }
               }
               §§goto(addr165);
            }
            §§goto(addr135);
         }
         §§goto(addr161);
      }
      
      protected function §]K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§-!a§)
            {
               if(!_loc2_)
               {
                  §5!U§.playSound("Hiscore_Badge",§^!4§);
               }
               §?E§.setText("New Highscore!","TextField_NewHighScore");
               loop2:
               while(true)
               {
                  (§?E§.getItemByName("TextField_NewHighScore") as §`!<§).setVisibility(true);
                  addr104:
                  while(!(_loc1_ || _loc2_))
                  {
                     continue loop2;
                  }
                  (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).setVisibility(false);
               }
               addr137:
               addr117:
            }
            else
            {
               (§?E§.getItemByName("TextField_BestScore") as §`!<§).setVisibility(true);
               while(_loc1_)
               {
                  (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).setVisibility(true);
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  if(!(_loc2_ && this))
                  {
                     if(!_loc2_)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§goto(addr24);
                        }
                        else
                        {
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr104);
                  }
                  addr24:
                  return;
                  addr86:
               }
            }
            this.§=#§();
            §§goto(addr86);
         }
         §§goto(addr117);
      }
      
      protected function §=#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[H§ = 0;
            do
            {
               this.§-q§ = 0;
               do
               {
                  this.§7!-§ = §^B§;
               }
               while(_loc2_ && _loc2_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      private function §,!g§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x = (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x - this.§[H§;
            while(true)
            {
               (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y = (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y - this.§-q§;
               addr45:
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            if(this.§7!-§ <= 0)
            {
               this.§7!-§ = -1;
               loop2:
               while(true)
               {
                  this.§=`§();
                  while(true)
                  {
                     if(_loc3_ && param1)
                     {
                        continue loop2;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        this.§[H§ = 0;
                        loop4:
                        while(true)
                        {
                           if(!(_loc3_ && param1))
                           {
                              this.§-q§ = 0;
                              continue;
                           }
                           loop8:
                           while(true)
                           {
                              (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x = (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x + this.§[H§;
                              loop9:
                              while(true)
                              {
                                 (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y = (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y + this.§-q§;
                                 addr139:
                                 while(true)
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       addr28:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§7!-§);
                                          if(_loc2_)
                                          {
                                             §§push(param1);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() / 10);
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§pop().§7!-§ = §§pop();
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(_loc2_)
                                          {
                                             §§goto(addr45);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(Math.random() - 0.5);
                                                if(!_loc3_)
                                                {
                                                   §§push(this.§7!-§);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(§§pop() / §^B§);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc2_ || this)
                                                   {
                                                      §§push(§§pop() * 20);
                                                   }
                                                }
                                                §§pop().§[H§ = §§pop();
                                                addr224:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(Math.random() - 0.5);
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.§7!-§);
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop() / §^B§);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc3_ && this))
                                                      {
                                                         addr186:
                                                         §§push(§§pop() * 20);
                                                      }
                                                      §§pop().§-q§ = §§pop();
                                                      continue loop8;
                                                   }
                                                   §§goto(addr186);
                                                }
                                             }
                                             addr195:
                                          }
                                          §§goto(addr146);
                                       }
                                       addr146:
                                       continue loop4;
                                       addr28:
                                    }
                                    continue loop9;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr139);
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        §§goto(addr28);
                     }
                     §§goto(addr224);
                  }
                  continue loop1;
               }
            }
            §§goto(addr195);
         }
      }
      
      protected function §=`§() : void
      {
      }
      
      private function §`"0§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = §3!w§.§7%§(§3!w§.§%n§).mScoreGold;
         var _loc5_:Number = §3!w§.§7%§(§3!w§.§%n§).mScoreSilver;
         if(_loc9_ || this)
         {
            if((§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§3!z§);
               loop0:
               while(!(_loc10_ && _loc2_))
               {
                  §§push(§§pop().getValue());
                  loop1:
                  for(; _loc9_ || _loc2_; §§push(§§pop().getValue()),if(!(_loc9_ || param1))
                  {
                     continue;
                  },if(_loc9_)
                  {
                     §§goto(addr519);
                  },§§goto(addr824))
                  {
                     §§push(_loc5_);
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr674:
                                    while(true)
                                    {
                                       §§push((§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.currentLabel == "UnLit");
                                    }
                                 }
                                 addr673:
                              }
                              while(true)
                              {
                                 loop8:
                                 while(!§§pop())
                                 {
                                    §§push(this.§3!z§);
                                    if(!_loc10_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop0;
                                    loop13:
                                    while(true)
                                    {
                                       if(!(_loc9_ || _loc2_))
                                       {
                                          continue loop8;
                                       }
                                       if(!(_loc9_ || _loc3_))
                                       {
                                          break;
                                       }
                                       loop14:
                                       while(!§§pop())
                                       {
                                          §§push(this.§!!S§);
                                          loop15:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                this.§^K§.stop();
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(this.§-!a§);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop18:
                                                         for(; _loc9_ || _loc2_; if(_loc9_ || _loc3_)
                                                         {
                                                            continue loop13;
                                                         })
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc9_ || param1))
                                                            {
                                                               while(_loc9_ || _loc3_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                               }
                                                               continue loop4;
                                                               addr531:
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           (§?E§.getItemByName("MovieClip_NewHighScoreBadge") as §%+§).setVisibility(true);
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 if(_loc9_ || _loc2_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(_loc9_ || _loc2_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§?""§ = §7!E§.§2=§.§<!C§((§?E§.getItemByName("MovieClip_NewHighScoreBadge") as §%+§).mClip,{
                                                                                                   "scaleX":1,
                                                                                                   "scaleY":1
                                                                                                },{
                                                                                                   "scaleX":7,
                                                                                                   "scaleY":7
                                                                                                },0.1);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr108:
                                                                                                   if(_loc10_ && _loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§?""§);
                                                                                                      addr70:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().onComplete = this.§]K§;
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr920:
                                                                                                return;
                                                                                                §§goto(addr227);
                                                                                             }
                                                                                             addr227:
                                                                                             while(_loc9_ || _loc3_)
                                                                                             {
                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                {
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr83);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr576:
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            §?E§.addChild(this.§7d§);
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               this.§ !Q§.push(this.§7d§);
                                                                                                               addr890:
                                                                                                               var _loc7_:*;
                                                                                                               §§push((_loc7_ = this).§@!6§);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + 1);
                                                                                                               }
                                                                                                               var _loc8_:* = §§pop();
                                                                                                               if(_loc9_ || _loc2_)
                                                                                                               {
                                                                                                                  _loc7_.§@!6§ = _loc8_;
                                                                                                               }
                                                                                                               addr554:
                                                                                                               addr502:
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.§^K§.delay = 1000;
                                                                                                            addr868:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§3!z§);
                                                                                                               addr858:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().§&!Y§(§=!X§.§#H§.getScore());
                                                                                                                  addr862:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§3!z§);
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr868:
                                                                                                            addr874:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr920);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr425:
                                                                                                      if(!(_loc10_ && this))
                                                                                                      {
                                                                                                         addr432:
                                                                                                         if(!(_loc10_ && _loc2_))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number((§?E§.getItemByName("MovieClip_StarRight") as §%+§).x + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x));
                                                                                                               loop43:
                                                                                                               for(; _loc9_ || _loc2_; §§push(Number((§?E§.getItemByName("MovieClip_StarRight") as §%+§).y + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y)),if(!(_loc9_ || this))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               },if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        break loop14;
                                                                                                                     }
                                                                                                                     this.§7d§ = new §@!I§(AngryBirdsFP11.§>!U§,AngryBirdsFP11.§>Y§,_loc2_,_loc3_,§@!I§.§`N§);
                                                                                                                     if(!(_loc10_ && _loc3_))
                                                                                                                     {
                                                                                                                        §?E§.addChild(this.§7d§);
                                                                                                                        addr319:
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           break loop8;
                                                                                                                        }
                                                                                                                        this.§ !Q§.push(this.§7d§);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§goto(addr890);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr618:
                                                                                                                           §§push(Number((§?E§.getItemByName("MovieClip_StarCenter") as §%+§).x + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x));
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              §§push(Number((§?E§.getItemByName("MovieClip_StarCenter") as §%+§).y + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y));
                                                                                                                              break loop43;
                                                                                                                              addr621:
                                                                                                                           }
                                                                                                                           §§goto(addr731);
                                                                                                                           addr631:
                                                                                                                        }
                                                                                                                        §§goto(addr920);
                                                                                                                     }
                                                                                                                     §§goto(addr715);
                                                                                                                  }
                                                                                                                  (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.gotoAndStop("Lit");
                                                                                                                  addr648:
                                                                                                                  §§goto(addr631);
                                                                                                                  addr648:
                                                                                                               },§§goto(addr618))
                                                                                                               {
                                                                                                                  if(_loc9_ || this)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     if(_loc9_ || this)
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        loop51:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc9_ || param1)
                                                                                                                           {
                                                                                                                              this.§ !Q§.push(this.§7d§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc10_ && this))
                                                                                                                                 {
                                                                                                                                    §§goto(addr890);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr868);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr701:
                                                                                                                              addr681:
                                                                                                                           }
                                                                                                                           addr741:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§7d§ = new §@!I§(AngryBirdsFP11.§>!U§,AngryBirdsFP11.§>Y§,_loc2_,_loc3_,§@!I§.§;0§);
                                                                                                                              addr715:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §?E§.addChild(this.§7d§);
                                                                                                                                 continue loop51;
                                                                                                                              }
                                                                                                                              continue loop51;
                                                                                                                           }
                                                                                                                           §§goto(addr701);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr920);
                                                                                                                  }
                                                                                                                  loop50:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     loop33:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        loop34:
                                                                                                                        for(; _loc9_; loop38:
                                                                                                                        while(!(_loc10_ && _loc2_))
                                                                                                                        {
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number((§?E§.getItemByName("MovieClip_StarLeft") as §%+§).y + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y));
                                                                                                                              addr731:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    continue loop38;
                                                                                                                                 }
                                                                                                                                 §§goto(addr733);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        })
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                              {
                                                                                                                                 addr824:
                                                                                                                                 §§push(Number(1));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       if(_loc9_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          loop36:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§^!9§ = §7!E§.§2=§.§<!C§(this,{"mNewScoreCounter":this.§3!z§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                                                                                             addr815:
                                                                                                                                             §§push(this.§^!9§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().onComplete = this.§9!y§;
                                                                                                                                                addr796:
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(this.§^!9§);
                                                                                                                                                if(!(_loc9_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§pop().play();
                                                                                                                                                (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.gotoAndStop("Lit");
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      break loop36;
                                                                                                                                                   }
                                                                                                                                                   §§push(Number((§?E§.getItemByName("MovieClip_StarLeft") as §%+§).x + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x));
                                                                                                                                                   continue loop34;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr862);
                                                                                                                                          }
                                                                                                                                          continue loop33;
                                                                                                                                          addr799:
                                                                                                                                       }
                                                                                                                                       §§goto(addr920);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    addr733:
                                                                                                                                    if(!(_loc9_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    §§goto(addr741);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(2);
                                                                                                                                    addr851:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       break loop34;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr850:
                                                                                                                              }
                                                                                                                              §§goto(addr799);
                                                                                                                           }
                                                                                                                           §§goto(addr851);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop50;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc3_ = §§pop();
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  this.§7d§ = new §@!I§(AngryBirdsFP11.§>!U§,AngryBirdsFP11.§>Y§,_loc2_,_loc3_,§@!I§.§<!-§);
                                                                                                                  §§goto(addr576);
                                                                                                               }
                                                                                                               §§goto(addr920);
                                                                                                               §§goto(addr432);
                                                                                                            }
                                                                                                            addr439:
                                                                                                         }
                                                                                                         addr884:
                                                                                                         §5!U§.playSound("Hiscore_Count",§2!_§,100);
                                                                                                         §5!U§.playSound("Hiscore_Star_Splash1",§^!4§);
                                                                                                         §§goto(addr874);
                                                                                                         addr889:
                                                                                                      }
                                                                                                      §§goto(addr681);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr335);
                                                                                                §§goto(addr108);
                                                                                             }
                                                                                             addr83:
                                                                                             addr293:
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(_loc9_ || _loc3_)
                                                                                                {
                                                                                                   §§goto(addr890);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr824);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr319);
                                                                                             }
                                                                                             §§goto(addr715);
                                                                                             addr126:
                                                                                          }
                                                                                          §§goto(addr789);
                                                                                       }
                                                                                       §§goto(addr621);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(!(_loc10_ && _loc2_))
                                                                                       {
                                                                                          §§push((§?E§.getItemByName("MovieClip_StarRight") as §%+§).mClip.currentLabel == "UnLit");
                                                                                          continue loop13;
                                                                                       }
                                                                                       addr540:
                                                                                    }
                                                                                    §§goto(addr889);
                                                                                 }
                                                                                 §§goto(addr309);
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(this.§4@§);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr177:
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             addr155:
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             addr283:
                                                                                             addr255:
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   continue loop20;
                                                                                                }
                                                                                                addr539:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   §§goto(addr540);
                                                                                                   continue loop19;
                                                                                                }
                                                                                             }
                                                                                             addr283:
                                                                                             §§push(_loc9_);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr289:
                                                                                                if(param1)
                                                                                                {
                                                                                                   this.§!!S§ = true;
                                                                                                   §§goto(addr293);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr289);
                                                                                          }
                                                                                          §§goto(addr796);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr554);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                    §§goto(addr289);
                                                                                 }
                                                                              }
                                                                              §§goto(addr815);
                                                                           }
                                                                           addr202:
                                                                        }
                                                                        addr494:
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           §5!U§.playSound("Hiscore_Star_Splash3",§^!4§);
                                                                           (§?E§.getItemByName("MovieClip_StarRight") as §%+§).mClip.gotoAndStop("Lit");
                                                                           §§goto(addr425);
                                                                           addr445:
                                                                        }
                                                                        §§goto(addr775);
                                                                     }
                                                                     addr188:
                                                                  }
                                                                  else
                                                                  {
                                                                     (§?E§.getItemByName("MovieClip_NewHighScoreBadge") as §%+§).setVisibility(false);
                                                                  }
                                                                  §§goto(addr126);
                                                               }
                                                               addr186:
                                                            }
                                                            §§goto(addr255);
                                                            §§goto(addr539);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr531);
                                                            §§goto(addr239);
                                                         }
                                                         addr239:
                                                         addr530:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr673);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr283);
                                          }
                                       }
                                       if(_loc9_)
                                       {
                                          if(_loc9_ || this)
                                          {
                                             this.§%"&§ = true;
                                             §§goto(addr494);
                                          }
                                          §§goto(addr765);
                                       }
                                       §§goto(addr648);
                                    }
                                    continue loop3;
                                 }
                                 §5!U§.playSound("Hiscore_Star_Splash2",§^!4§);
                                 §§goto(addr648);
                              }
                           }
                        }
                        addr519:
                        §§push(_loc4_);
                        if(_loc10_ && _loc2_)
                        {
                           continue;
                        }
                        if(!_loc10_)
                        {
                           §§goto(addr530);
                           §§push(§§pop() >= §§pop());
                        }
                        §§goto(addr850);
                        §§push(§§pop() / §§pop());
                     }
                  }
                  §§goto(addr849);
                  §§push(_loc4_);
               }
               while(true)
               {
                  if(_loc9_ || _loc2_)
                  {
                     §§goto(addr848);
                     §§push(§§pop().getValue());
                  }
                  §§goto(addr858);
                  §§goto(addr862);
               }
            }
            §§goto(addr884);
         }
         §§goto(addr439);
      }
      
      private function §9!y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §5!U§.§+!7§(§2!_§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§@!I§ = null;
         §§push(super.run(param1));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc6_)
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               if(§§pop() != §5y§.STATE_STATUS_RUNNING)
               {
                  if(_loc7_ || this)
                  {
                     §§push(_loc2_);
                     if(!_loc6_)
                     {
                        return §§pop();
                     }
                     for each(_loc3_ in this.§ !Q§)
                     {
                        if(!(_loc6_ && this))
                        {
                           _loc3_.update(param1);
                        }
                     }
                     addr70:
                     if(_loc7_)
                     {
                        if(this.§7!-§ > -1)
                        {
                           while(true)
                           {
                              this.§,!g§(param1);
                              addr169:
                              while(true)
                              {
                              }
                           }
                           addr166:
                        }
                        for(; mNextState.length > 0; §§goto(addr169))
                        {
                           if(_loc6_ && _loc2_)
                           {
                              continue;
                           }
                           §=!X§.§!'§.clearLevel();
                           if(!(_loc6_ && _loc3_))
                           {
                              return §5y§.STATE_STATUS_COMPLETED;
                           }
                        }
                        return §5y§.STATE_STATUS_RUNNING;
                     }
                     §§goto(addr166);
                     addr70:
                  }
                  else
                  {
                     addr68:
                     while(true)
                     {
                     }
                     addr68:
                  }
                  §§goto(addr70);
               }
               loop0:
               while(true)
               {
                  §?E§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                  while(_loc7_)
                  {
                     §?E§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                     if(_loc7_)
                     {
                        if(true)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr68);
               }
               §§push(0);
            }
            §§goto(addr70);
         }
         §§goto(addr68);
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
               this.§#!x§();
            }
            addr207:
         }
         loop1:
         while(true)
         {
            this.§7!-§ = 0;
            loop2:
            while(true)
            {
               this.mNewScoreCounter = 0;
               loop3:
               while(true)
               {
                  §§push(this.§^!9§);
                  if(!(_loc1_ && this))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§^!9§);
                           addr179:
                           while(true)
                           {
                              §§pop().stop();
                              addr180:
                              while(true)
                              {
                                 this.§^!9§ = null;
                                 addr163:
                                 while(!_loc1_)
                                 {
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        addr177:
                     }
                     while(true)
                     {
                        §§push(this.§?""§);
                        if(!_loc1_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§?""§);
                                 addr157:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    addr158:
                                    while(true)
                                    {
                                       this.§?""§ = null;
                                       addr148:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr155:
                           }
                           loop7:
                           while(true)
                           {
                              §5!U§.§+!7§(§2!_§);
                              loop8:
                              while(true)
                              {
                                 this.§-!+§(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 loop9:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop8;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop7;
                                    }
                                    if(_loc2_)
                                    {
                                       §?E§.setText("0","TextField_LevelEndScore");
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             break loop9;
                                          }
                                          if(_loc1_)
                                          {
                                             break;
                                          }
                                          §?E§.setText("0","TextField_LevelEndScoreEffects");
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr158);
                                             addr44:
                                             if(_loc2_ || this)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      addr20:
                                                      return;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop10;
                                             }
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr180);
                              }
                           }
                        }
                        §§goto(addr157);
                        §§goto(addr165);
                     }
                  }
                  §§goto(addr179);
               }
            }
         }
      }
      
      protected function §-!+§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§?E§.getItemByName("Button_Menu") as §="#§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§?E§.getItemByName("Button_Replay") as §="#§).setComponentVisualState(param1);
               do
               {
                  (§?E§.getItemByName("Button_NextLevel") as §="#§).setComponentVisualState(param1);
                  continue loop0;
               }
               while(!_loc3_);
               
            }
         }
      }
      
      private function §#!x§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§@!I§ = null;
         if(_loc4_)
         {
            if(this.§^K§)
            {
               if(_loc4_ || this)
               {
                  this.§^K§.stop();
                  try
                  {
                     addr39:
                     this.§^K§.removeEventListener(TimerEvent.TIMER,this.§`"0§);
                     if(!_loc4_)
                     {
                     }
                  }
                  catch(e:Error)
                  {
                  }
                  do
                  {
                     this.§ "§();
                  }
                  while(!_loc4_);
                  
                  return;
                  addr160:
                  addr153:
               }
               §§goto(addr39);
            }
            var _loc2_:int = 0;
            if(!(_loc5_ && _loc3_))
            {
               var _loc3_:* = this.§ !Q§;
               if(!_loc5_)
               {
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                     }
                  }
                  addr130:
                  if(_loc4_)
                  {
                     this.§ !Q§ = new Vector.<§@!I§>();
                     §§goto(addr160);
                  }
                  §§goto(addr153);
                  addr127:
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     if(§?E§.contains(splash))
                     {
                        while(!(_loc5_ && this))
                        {
                           §?E§.removeChild(splash);
                           while(true)
                           {
                           }
                        }
                        continue loop2;
                        addr106:
                     }
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           §§pop().§§slot[1].clean();
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 if(false)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr127);
                              }
                              else
                              {
                                 §§goto(addr106);
                              }
                           }
                           §§goto(addr117);
                        }
                        break;
                     }
                     §§goto(addr121);
                  }
               }
            }
            §§goto(addr130);
         }
         §§goto(addr39);
      }
      
      protected function § "§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§?E§.getItemByName("TextField_BestScore") as §`!<§).setVisibility(false);
         }
         while(true)
         {
            (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).setVisibility(false);
            while(_loc1_)
            {
               (§?E§.getItemByName("TextField_NewHighScore") as §`!<§).setVisibility(false);
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.cleanup();
         }
      }
      
      protected function §0!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §0!v§.§`" §();
            do
            {
               mNextState = this.§]!I§();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = null;
         §§push(param2);
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc7_ || this)
            {
               if("NEXT_LEVEL" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     addr173:
                     §§push(0);
                     if(_loc7_ || this)
                     {
                     }
                  }
                  else
                  {
                     addr192:
                     §§push(1);
                     if(!(_loc7_ || param3))
                     {
                        addr209:
                     }
                  }
               }
               else
               {
                  if("REPLAY" === _loc5_)
                  {
                     if(_loc7_ || param3)
                     {
                        §§goto(addr192);
                     }
                     §§goto(addr250);
                  }
                  if("WATCH_REPLAY" === _loc5_)
                  {
                     if(_loc7_)
                     {
                        §§push(2);
                        if(!_loc6_)
                        {
                           §§goto(addr209);
                        }
                        else
                        {
                           addr245:
                           §§goto(addr250);
                        }
                     }
                     else
                     {
                        addr220:
                        §§push(3);
                        if(!_loc7_)
                        {
                        }
                        §§goto(addr250);
                     }
                  }
                  else if("MENU" === _loc5_)
                  {
                     if(_loc7_ || this)
                     {
                        §§goto(addr220);
                     }
                  }
                  else if("FULLSCREEN_BUTTON" !== _loc5_)
                  {
                     addr250:
                     loop3:
                     switch(§§pop())
                     {
                        case 0:
                           this.§0!8§();
                           break;
                           addr155:
                        case 1:
                           §0!v§.§4[§();
                           mNextState = this.§=T§();
                           addr142:
                           if(_loc7_)
                           {
                              break;
                           }
                           §§goto(addr155);
                           break;
                           addr150:
                        case 2:
                           §0!v§.§4[§();
                           loop1:
                           while(true)
                           {
                              mNextState = this.§=T§();
                              if(!(_loc6_ && param2))
                              {
                                 §§push(§=!X§.§!'§);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop().§-J§());
                                    if(_loc7_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(_loc4_ = §§pop());
                                    if(!(_loc6_ && param2))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             addr101:
                                             §=!X§.§!'§.§^!K§(_loc4_);
                                          }
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             if(!_loc7_)
                                             {
                                                §§goto(addr142);
                                             }
                                          }
                                          addr103:
                                       }
                                       break loop3;
                                    }
                                    break;
                                 }
                                 §§goto(addr101);
                              }
                              break loop3;
                           }
                           continue;
                        case 3:
                           §5!U§.§9&§();
                           if(_loc7_ || param2)
                           {
                              addr43:
                              mNextState = this.§0!c§();
                              if(_loc7_ || param2)
                              {
                                 if(!(_loc6_ && param2))
                                 {
                                    break;
                                 }
                                 §§goto(addr150);
                              }
                              else
                              {
                                 §§goto(addr103);
                              }
                           }
                           break;
                        case 4:
                           AngryBirdsFP11.§%d§.§9+§();
                           if(_loc7_ || param2)
                           {
                              if(_loc7_ || param1)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              §§goto(addr43);
                           }
                     }
                     return;
                     §§push(5);
                  }
                  §§goto(addr250);
                  if(_loc7_ || param2)
                  {
                     §§goto(addr245);
                  }
               }
               §§goto(addr250);
            }
            §§goto(addr173);
         }
      }
      
      protected function §=T§() : String
      {
         return §0!v§.§'=§;
      }
      
      protected function §]!I§() : String
      {
         return StateCutScene.§'=§;
      }
      
      public function §0!c§() : String
      {
         return §7B§.§'=§;
      }
   }
}
