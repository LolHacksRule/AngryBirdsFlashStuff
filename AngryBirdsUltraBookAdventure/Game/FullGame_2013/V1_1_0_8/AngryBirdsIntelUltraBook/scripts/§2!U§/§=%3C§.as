package §2!U§
{
   import §"!i§.LevelManager;
   import §2y§.§54§;
   import §2y§.§7!p§;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §>!q§.§!^§;
   import §>!q§.§;!J§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §=<§ extends §9![§
   {
      
      public static const §'!q§:String = "LevelEndStateRio";
      
      public static const §0u§:Number = 30;
      
      protected static const §[!<§:String = "ScoreLoopCountChannel";
      
      protected static const §+!r§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §'!q§ = "LevelEndStateRio";
            loop0:
            while(true)
            {
               §0u§ = 30;
               while(true)
               {
                  §[!<§ = "ScoreLoopCountChannel";
                  while(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        §+!r§ = "EndScreenEffectChannel";
                        if(_loc2_ && §=<§)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private var §7!3§:§^v§;
      
      private var §]!F§:Number;
      
      private var §?""§:Number = 0.0;
      
      private var §'l§:Number = 0.0;
      
      private var §9!d§:Boolean = false;
      
      private var §[!D§:Timer;
      
      private var §`!%§:§!^§;
      
      protected var §@X§:Array;
      
      protected var §`!_§:§;!J§;
      
      protected var §5!x§:Vector.<§;!J§>;
      
      public var mNewScoreCounter:int;
      
      private var §^i§:int;
      
      private var §8!w§:Boolean;
      
      protected var §"E§:Boolean;
      
      private var §0!F§:§2B§;
      
      protected var §=P§:Boolean;
      
      private var §"!g§:§^v§;
      
      protected var § P§:Boolean;
      
      protected var §,!0§:int;
      
      public function §=<§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§@X§ = [];
         }
         while(true)
         {
            this.§0!F§ = new §2B§();
            while(_loc4_)
            {
               super(param1,param2);
               if(!(_loc3_ && param1))
               {
                  return;
               }
            }
         }
      }
      
      override public function init() : void
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
            §'!Q§ = new §&!G§(this);
            loop1:
            while(true)
            {
               §'!Q§.init(this.getViewXML());
               while(true)
               {
                  this.initButtonDefaultPositions();
                  loop3:
                  while(!(_loc1_ && _loc1_))
                  {
                     if(!_loc1_)
                     {
                        this.§5!x§ = new Vector.<§;!J§>();
                        do
                        {
                           §-!Q§.§"3§(§[!<§,1,1);
                           while(_loc2_ || this)
                           {
                              if(!_loc1_)
                              {
                                 §-!Q§.§"3§(§+!r§,3,1);
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr37);
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        while(!_loc2_);
                        
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§@X§);
            loop0:
            while(true)
            {
               §§pop().push((§'!Q§.getItemByName("Button_Menu") as §[!i§).x);
               loop1:
               while(true)
               {
                  §§push(this.§@X§);
                  while(true)
                  {
                     §§pop().push((§'!Q§.getItemByName("Button_Replay") as §[!i§).x);
                     loop3:
                     while(_loc1_)
                     {
                        §§push(this.§@X§);
                        loop4:
                        while(true)
                        {
                           §§pop().push((§'!Q§.getItemByName("Button_NextLevel") as §[!i§).x);
                           addr82:
                           while(_loc1_ || _loc2_)
                           {
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                     if(_loc1_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      protected function getViewXML() : XML
      {
         return §2!z§.§ _§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(AngryBirdsFP11.sUserProgress.§8!N§(LevelManager.§"L§))
            {
               (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(true);
               loop0:
               while(_loc1_)
               {
                  (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
                  while(_loc1_)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
                           loop2:
                           while(_loc1_ || this)
                           {
                              (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(true);
                              while(true)
                              {
                                 (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = this.§@X§[0];
                                 addr83:
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = this.§@X§[1];
                                    while(true)
                                    {
                                       if(_loc1_ || this)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr228);
                                 addr43:
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc1_)
                                    {
                                       §§goto(addr24);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           continue;
                        }
                        §§goto(addr247);
                     }
                     (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = this.§@X§[0] + Math.abs(this.§@X§[1] - this.§@X§[0]) / 2;
                     break;
                  }
                  (§'!Q§.getItemByName("Button_CutScene") as §[!i§).x = this.§@X§[1] + Math.abs(this.§@X§[2] - this.§@X§[1]) / 2;
                  break;
               }
               addr24:
               return;
            }
            if(!(_loc2_ && _loc1_))
            {
               (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(false);
            }
            loop4:
            while(true)
            {
               (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
               addr247:
               while(_loc2_ && _loc1_)
               {
                  continue loop4;
               }
               addr228:
               (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
               (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(true);
            }
            §§goto(addr219);
         }
         §§goto(addr99);
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(true);
            loop0:
            while(true)
            {
               (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
               while(true)
               {
                  (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(false);
                  loop2:
                  while(true)
                  {
                     if(LevelManager.§8`§())
                     {
                        if(!_loc1_)
                        {
                           (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(true);
                           addr194:
                           loop7:
                           while(true)
                           {
                              (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = this.§@X§[0];
                              addr168:
                              while(!_loc1_)
                              {
                                 (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = this.§@X§[1];
                                 while(true)
                                 {
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue loop7;
                                    }
                                    if(!_loc2_)
                                    {
                                       break loop2;
                                    }
                                    (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).x = this.§@X§[2];
                                 }
                                 continue loop7;
                              }
                              continue loop0;
                           }
                           addr194:
                        }
                        §§goto(addr194);
                     }
                     else
                     {
                        (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
                        loop3:
                        while(true)
                        {
                           (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = this.§@X§[0] + Math.abs(this.§@X§[1] - this.§@X§[0]) / 2;
                           for(; _loc2_ || _loc1_; (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = this.§@X§[1] + Math.abs(this.§@X§[2] - this.§@X§[1]) / 2,if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           },if(_loc1_)
                           {
                              continue loop3;
                           },if(!(_loc1_ && _loc1_))
                           {
                              §§goto(addr20);
                           },§§goto(addr147))
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr168);
                           }
                        }
                     }
                     if(!_loc1_)
                     {
                        addr20:
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr194);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            while(true)
            {
               this.§ P§ = false;
            }
            addr192:
         }
         while(true)
         {
            §,!s§.pause();
            while(true)
            {
               this.§`!%§ = new §!^§(0,0,0,0);
               loop3:
               while(true)
               {
                  §'!Q§.movieClip.addChildAt(this.§`!%§,§'!Q§.movieClip.numChildren - 1);
                  while(true)
                  {
                     if(!LevelManager.§7v§())
                     {
                        this.showButtonsNormal();
                        continue;
                     }
                     while(true)
                     {
                        this.showButtonsCutScene();
                        continue loop3;
                     }
                  }
               }
               if(!(_loc2_ && this))
               {
                  return;
               }
            }
         }
      }
      
      protected function get § !t§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §1! §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§"E§ = false;
            loop0:
            while(true)
            {
               this.setScoreData();
               loop1:
               while(true)
               {
                  this.§[!D§ = new Timer(500);
                  loop2:
                  while(true)
                  {
                     this.§^i§ = 0;
                     loop3:
                     while(_loc2_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§[!D§.addEventListener(TimerEvent.TIMER,this.§;h§);
                           do
                           {
                              this.§[!D§.start();
                           }
                           while(_loc1_);
                           
                           if(_loc2_ || _loc1_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      protected function §@f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§"L§) != 100)
            {
               (§'!Q§.getItemByName("MovieClip_ResultMEFeather") as §7!p§).mClip.gotoAndStop("Off");
               if(_loc1_ && _loc1_)
               {
                  addr85:
               }
               return;
            }
            if(!(_loc1_ && _loc2_))
            {
               addr77:
               (§'!Q§.getItemByName("MovieClip_ResultMEFeather") as §7!p§).mClip.gotoAndStop("On");
            }
            §§goto(addr85);
         }
         §§goto(addr77);
      }
      
      protected function §"!m§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(!this.§=P§)
            {
               §'!Q§.setText("Best " + param2.toString(),"TextField_BestScore");
               do
               {
                  this.§,!0§ = LevelManager.§2!&§(LevelManager.§"L§,param2);
               }
               while(_loc4_ && this);
               
               if(_loc5_)
               {
                  if(_loc5_ || this)
                  {
                     if(!(_loc4_ && this))
                     {
                        §§push(this.§,!0§);
                        if(!(_loc4_ && this))
                        {
                           var _loc3_:* = §§pop();
                           if(!(_loc4_ && param2))
                           {
                              §§push(1);
                              if(_loc5_ || param1)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr192:
                                          §§push(0);
                                          if(!_loc4_)
                                          {
                                             addr243:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).§>Z§("OneStar");
                                                   addr41:
                                                   break;
                                                   addr69:
                                                case 1:
                                                   (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).§>Z§("TwoStar");
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   break;
                                                case 2:
                                                   (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).§>Z§("ThreeStar");
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr69);
                                                      }
                                                      §§goto(addr41);
                                                   }
                                             }
                                             return;
                                             addr242:
                                          }
                                       }
                                       else
                                       {
                                          addr234:
                                          §§push(2);
                                          if(!_loc4_)
                                          {
                                             addr237:
                                          }
                                       }
                                       §§goto(addr242);
                                    }
                                    else
                                    {
                                       §§push(2);
                                       if(_loc5_)
                                       {
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             addr202:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   §§push(1);
                                                   if(_loc5_ || this)
                                                   {
                                                      addr228:
                                                      §§goto(addr242);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr237);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr234);
                                                }
                                             }
                                             else
                                             {
                                                §§push(3);
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc3_);
                                                }
                                             }
                                             §§goto(addr242);
                                          }
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr234);
                                          }
                                          else
                                          {
                                             §§goto(addr242);
                                             §§push(3);
                                          }
                                          §§goto(addr242);
                                       }
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr242);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr243);
                     }
                     else
                     {
                        addr147:
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§push(int(§§pop()));
                        }
                        param2 = §§pop();
                        loop0:
                        while(true)
                        {
                           AngryBirdsFP11.sUserProgress.§<C§(LevelManager.§"L§,param2);
                           addr143:
                           while(true)
                           {
                              §'!Q§.setText("New Highscore!","TextField_BestScore");
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr243);
                  }
                  §§goto(addr143);
               }
               §§goto(addr128);
               addr122:
            }
            §§goto(addr147);
         }
         §§goto(addr122);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§"L§));
         if(_loc8_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§,!s§.§ Q§.getScore());
         if(_loc8_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            this.§=P§ = _loc2_ > _loc1_;
         }
         loop0:
         while(true)
         {
            addr53:
            addr72:
            while(true)
            {
               this.§"!m§(_loc2_,_loc1_);
               continue loop0;
            }
            §§push(§,!s§.§ Q§.getEagleScore());
            if(!(_loc7_ && _loc2_))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§"L§));
            if(!_loc7_)
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
                        if(_loc8_)
                        {
                           addr120:
                           §§push(AngryBirdsFP11.sUserProgress);
                           if(_loc8_)
                           {
                              §§push(LevelManager.§"L§);
                              if(_loc8_)
                              {
                                 §§push(_loc4_);
                                 if(_loc8_ || _loc1_)
                                 {
                                    §§pop().§3!L§(§§pop(),§§pop());
                                    addr141:
                                    §§push(AngryBirdsFP11.sUserProgress);
                                    §§push(LevelManager.§"L§);
                                    §§push(_loc2_);
                                 }
                                 §§push(§§pop().getStarsForLevel(§§pop(),§§pop()));
                                 if(!_loc7_)
                                 {
                                    addr146:
                                    var _loc6_:int = §§pop();
                                    if(!(_loc7_ && this))
                                    {
                                       (§'!Q§.getItemByName("MovieClip_NewHighScoreBadge") as §7!p§).setVisibility(false);
                                       while(true)
                                       {
                                          (§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).mClip.gotoAndStop("UnLit");
                                          addr170:
                                          if(!(_loc8_ || _loc1_))
                                          {
                                             continue;
                                          }
                                          return;
                                          addr177:
                                       }
                                    }
                                    while(true)
                                    {
                                       (§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).mClip.gotoAndStop("UnLit");
                                       while(_loc8_)
                                       {
                                          (§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).mClip.gotoAndStop("UnLit");
                                          if(_loc7_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr170);
                                       }
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr146);
                              }
                           }
                        }
                        §§goto(addr141);
                     }
                  }
                  §§goto(addr146);
               }
               §§goto(addr120);
            }
            §§goto(addr141);
         }
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§=P§)
            {
               (§'!Q§.getItemByName("TextField_BestScore") as §54§).setVisibility(true);
               loop0:
               for(; _loc1_; (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).setVisibility(true),if(_loc2_)
               {
                  continue;
               },§§goto(addr19))
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc1_ || this)
                     {
                        continue;
                     }
                     §§goto(addr122);
                  }
                  while(true)
                  {
                     (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).setVisibility(false);
                     addr97:
                     while(true)
                     {
                        this.§@7§();
                        break loop0;
                     }
                  }
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr112);
               }
               addr19:
               return;
            }
            if(!_loc2_)
            {
               §-!Q§.§#3§("Hiscore_Badge",§+!r§);
            }
            §'!Q§.setText("New Highscore!","TextField_NewHighScore");
            while(true)
            {
               (§'!Q§.getItemByName("TextField_NewHighScore") as §54§).setVisibility(true);
            }
            addr122:
            addr112:
         }
         §§goto(addr106);
      }
      
      protected function §@7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§?""§ = 0;
            do
            {
               this.§'l§ = 0;
               do
               {
                  this.§]!F§ = §0u§;
               }
               while(_loc1_ && this);
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private function § ""§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x = (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x - this.§?""§;
            loop0:
            while(true)
            {
               (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y = (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y - this.§'l§;
               loop1:
               while(true)
               {
                  if(this.§]!F§ <= 0)
                  {
                     this.§]!F§ = -1;
                     while(true)
                     {
                        this.§%H§();
                        while(_loc3_)
                        {
                           if(_loc3_ || param1)
                           {
                              this.§?""§ = 0;
                              while(!_loc2_)
                              {
                                 this.§'l§ = 0;
                              }
                              continue;
                              addr82:
                           }
                           else
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(Math.random() - 0.5);
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(this.§]!F§);
                                    if(!(_loc2_ && param1))
                                    {
                                       §§push(§§pop() / §0u§);
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * 20);
                                    }
                                 }
                                 §§pop().§'l§ = §§pop();
                                 loop7:
                                 do
                                 {
                                    if(!_loc2_)
                                    {
                                       (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x = (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x + this.§?""§;
                                       loop8:
                                       while(!_loc2_)
                                       {
                                          (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y = (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y + this.§'l§;
                                          do
                                          {
                                             if(!_loc2_)
                                             {
                                                addr29:
                                                do
                                                {
                                                   §§push(this);
                                                   §§push(this.§]!F§);
                                                   if(_loc3_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() / 10);
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   §§pop().§]!F§ = §§pop();
                                                }
                                                while(_loc2_ && param1);
                                                
                                                continue;
                                                addr29:
                                             }
                                             continue loop8;
                                          }
                                          while(_loc2_ && _loc2_);
                                          
                                          continue loop7;
                                       }
                                       continue loop6;
                                    }
                                    continue loop1;
                                 }
                                 while(!(_loc3_ || _loc3_));
                                 
                                 return;
                              }
                           }
                           while(!_loc2_)
                           {
                              continue loop0;
                              §§goto(addr29);
                           }
                           §§goto(addr82);
                        }
                     }
                  }
                  §§goto(addr191);
               }
            }
         }
         while(true)
         {
            §§goto(addr29);
         }
      }
      
      protected function §%H§() : void
      {
      }
      
      private function §;h§(param1:TimerEvent) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc9_:* = false;
         var _loc4_:Number = LevelManager.§"!l§(LevelManager.§"L§).§;"$§;
         var _loc5_:Number = LevelManager.§"!l§(LevelManager.§"L§).§2!m§;
         if(!(_loc13_ && this))
         {
            if((§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§0!F§);
               loop0:
               while(!(_loc13_ && param1))
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(!(_loc13_ && _loc2_))
                  {
                     if(!(_loc13_ && this))
                     {
                        §§push(_loc5_);
                        loop2:
                        for(; _loc12_; §§push(_loc4_),if(_loc13_ && _loc2_)
                        {
                           continue;
                        },§§goto(addr508),§§push(§§pop() >= §§pop()))
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
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       if(!_loc13_)
                                       {
                                          if(!_loc13_)
                                          {
                                             §§push((§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).mClip.currentLabel == "UnLit");
                                             while(true)
                                             {
                                                loop7:
                                                while(!§§pop())
                                                {
                                                   §§push(this.§0!F§);
                                                   if(!_loc13_)
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         §§push(§§pop().getValue());
                                                         §§push(_loc4_);
                                                      }
                                                      else
                                                      {
                                                         addr839:
                                                      }
                                                      §§push(§§pop().getValue());
                                                      if(!_loc12_)
                                                      {
                                                         continue loop1;
                                                         break loop2;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop0;
                                                   addr467:
                                                   if(!(_loc12_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   loop13:
                                                   while(!§§pop())
                                                   {
                                                      §§push(this.§8!w§);
                                                      loop14:
                                                      for(; _loc12_; if(!(_loc12_ || _loc3_))
                                                      {
                                                         continue;
                                                      },§§goto(addr220))
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(_loc12_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               this.§[!D§.stop();
                                                               loop15:
                                                               while(!_loc13_)
                                                               {
                                                                  §§push(this.§=P§);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_ || _loc3_)
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc13_ && _loc3_))
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc13_ && param1))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       addr220:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             (§'!Q§.getItemByName("MovieClip_NewHighScoreBadge") as §7!p§).setVisibility(false);
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc12_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§7!3§ = §`!G§.§[U§.§-]§((§'!Q§.getItemByName("MovieClip_NewHighScoreBadge") as §7!p§).mClip,{
                                                                                                                  "scaleX":1,
                                                                                                                  "scaleY":1
                                                                                                               },{
                                                                                                                  "scaleX":7,
                                                                                                                  "scaleY":7
                                                                                                               },0.1);
                                                                                                               if(!(_loc13_ && param1))
                                                                                                               {
                                                                                                                  addr124:
                                                                                                                  if(_loc12_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc12_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc13_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(!(_loc13_ && _loc2_))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§7!3§);
                                                                                                                                 loop23:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().onComplete = this.onBadgeLanded;
                                                                                                                                    loop24:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc12_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§7!3§);
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                   §§pop().play();
                                                                                                                                                   if(!(_loc12_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      break loop5;
                                                                                                                                                   }
                                                                                                                                                   if(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      continue loop21;
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                             addr520:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push((§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).mClip.currentLabel == "UnLit");
                                                                                                                                                break loop16;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr431:
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                §§push(Number((§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).y + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y));
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   addr430:
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                   §§goto(addr431);
                                                                                                                                                }
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                   this.§`!_§ = new §;!J§(AngryBirdsFP11.§!Z§,AngryBirdsFP11.§2" §,_loc2_,_loc3_,§;!J§.§5p§,§;!J§.§"R§,_loc9_);
                                                                                                                                                   §'!Q§.addChild(this.§`!_§);
                                                                                                                                                   addr414:
                                                                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         this.§5!x§.push(this.§`!_§);
                                                                                                                                                         addr347:
                                                                                                                                                         if(_loc12_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc13_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc12_)
                                                                                                                                                               {
                                                                                                                                                                  addr886:
                                                                                                                                                                  var _loc10_:*;
                                                                                                                                                                  §§push((_loc10_ = this).§^i§);
                                                                                                                                                                  if(_loc12_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + 1);
                                                                                                                                                                  }
                                                                                                                                                                  var _loc11_:* = §§pop();
                                                                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     _loc10_.§^i§ = _loc11_;
                                                                                                                                                                  }
                                                                                                                                                                  break loop5;
                                                                                                                                                               }
                                                                                                                                                               addr564:
                                                                                                                                                               addr602:
                                                                                                                                                               this.§`!_§ = new §;!J§(AngryBirdsFP11.§!Z§,AngryBirdsFP11.§2" §,_loc2_,_loc3_,§;!J§.§,!M§,§;!J§.§"R§,_loc8_);
                                                                                                                                                               if(!(_loc13_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §'!Q§.addChild(this.§`!_§);
                                                                                                                                                                  break loop15;
                                                                                                                                                               }
                                                                                                                                                               addr860:
                                                                                                                                                               addr885:
                                                                                                                                                               addr860:
                                                                                                                                                               this.§[!D§.delay = 1000;
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§0!F§);
                                                                                                                                                                  break loop0;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr527:
                                                                                                                                                            if(!(_loc13_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr886);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr814:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§"!g§);
                                                                                                                                                                  loop32:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().onComplete = this.§6<§;
                                                                                                                                                                     addr797:
                                                                                                                                                                     addr715:
                                                                                                                                                                     addr702:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§"!g§);
                                                                                                                                                                        if(!_loc12_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop32;
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().play();
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           addr777:
                                                                                                                                                                           §§push(Boolean(this.§@b§()));
                                                                                                                                                                           break loop17;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr839);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     this.§5!x§.push(this.§`!_§);
                                                                                                                                                                     §§goto(addr886);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr814:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr414);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr414);
                                                                                                                                                      }
                                                                                                                                                      addr376:
                                                                                                                                                   }
                                                                                                                                                   loop41:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr748:
                                                                                                                                                      §§push(Number((§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).y + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y));
                                                                                                                                                      addr772:
                                                                                                                                                      if(!(_loc13_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr755:
                                                                                                                                                         _loc3_ = §§pop();
                                                                                                                                                         this.§`!_§ = new §;!J§(AngryBirdsFP11.§!Z§,AngryBirdsFP11.§2" §,_loc2_,_loc3_,§;!J§.§`C§,§;!J§.§"R§,_loc7_);
                                                                                                                                                         break loop24;
                                                                                                                                                         addr756:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc2_ = §§pop();
                                                                                                                                                         continue loop41;
                                                                                                                                                         §§goto(addr748);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr755);
                                                                                                                                                   }
                                                                                                                                                   addr393:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr587:
                                                                                                                                                   if(_loc13_ && this)
                                                                                                                                                   {
                                                                                                                                                      addr618:
                                                                                                                                                      if(_loc12_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc13_)
                                                                                                                                                            {
                                                                                                                                                               _loc2_ = §§pop();
                                                                                                                                                               addr630:
                                                                                                                                                               if(_loc12_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr587);
                                                                                                                                                                  §§push(Number((§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).y + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y));
                                                                                                                                                               }
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr772);
                                                                                                                                                                  §§push(Number((§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).x + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x));
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr860);
                                                                                                                                                            }
                                                                                                                                                            addr844:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         _loc6_ = §§pop();
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(!(_loc13_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     break loop1;
                                                                                                                                                                  }
                                                                                                                                                                  addr828:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.§"!g§ = §`!G§.§[U§.§-]§(this,{"mNewScoreCounter":this.§0!F§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                                                                                                                  §§goto(addr814);
                                                                                                                                                               }
                                                                                                                                                               addr798:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr844);
                                                                                                                                                            }
                                                                                                                                                            addr843:
                                                                                                                                                         }
                                                                                                                                                         addr846:
                                                                                                                                                      }
                                                                                                                                                      loop38:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            addr832:
                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                            if(!_loc13_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr798);
                                                                                                                                                            }
                                                                                                                                                            break loop5;
                                                                                                                                                         }
                                                                                                                                                         addr842:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr843);
                                                                                                                                                            continue loop38;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr832);
                                                                                                                                                      }
                                                                                                                                                      addr830:
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      §§goto(addr602);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr748);
                                                                                                                                                }
                                                                                                                                                §§goto(addr814);
                                                                                                                                             }
                                                                                                                                             §§goto(addr630);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr331:
                                                                                                                                          if(!(_loc12_ || this))
                                                                                                                                          {
                                                                                                                                             break loop13;
                                                                                                                                          }
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr618);
                                                                                                                                             §§push(Number((§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).x + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x));
                                                                                                                                             addr656:
                                                                                                                                          }
                                                                                                                                          §§goto(addr886);
                                                                                                                                       }
                                                                                                                                       §§goto(addr618);
                                                                                                                                    }
                                                                                                                                    addr732:
                                                                                                                                    addr708:
                                                                                                                                    §'!Q§.addChild(this.§`!_§);
                                                                                                                                    if(!(_loc12_ || param1))
                                                                                                                                    {
                                                                                                                                       §§goto(addr797);
                                                                                                                                    }
                                                                                                                                    §§goto(addr715);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop21;
                                                                                                                              addr76:
                                                                                                                           }
                                                                                                                           §§goto(addr564);
                                                                                                                        }
                                                                                                                        §§goto(addr414);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr328:
                                                                                                                        this.§8!w§ = true;
                                                                                                                     }
                                                                                                                     §§goto(addr331);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc12_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(!(_loc13_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc12_ || this)
                                                                                                                              {
                                                                                                                                 §§push(this.§"E§);
                                                                                                                                 if(_loc12_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc13_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       addr448:
                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                       break loop21;
                                                                                                                                    }
                                                                                                                                    §§push(!§§pop());
                                                                                                                                 }
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              §§goto(addr788);
                                                                                                                           }
                                                                                                                           §§goto(addr702);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        §§goto(addr124);
                                                                                                                     }
                                                                                                                     addr285:
                                                                                                                  }
                                                                                                                  §§goto(addr347);
                                                                                                               }
                                                                                                               break loop5;
                                                                                                            }
                                                                                                            addr94:
                                                                                                         }
                                                                                                         addr479:
                                                                                                         if(_loc12_ || param1)
                                                                                                         {
                                                                                                            §§push(this.§0F§());
                                                                                                            break loop14;
                                                                                                         }
                                                                                                         break loop7;
                                                                                                      }
                                                                                                      §§goto(addr393);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc13_ && param1))
                                                                                                         {
                                                                                                            (§'!Q§.getItemByName("MovieClip_NewHighScoreBadge") as §7!p§).setVisibility(true);
                                                                                                            while(!_loc13_)
                                                                                                            {
                                                                                                               if(_loc12_ || _loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr94);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr880:
                                                                                                                  §-!Q§.§#3§("Hiscore_Count",§[!<§,100);
                                                                                                               }
                                                                                                               §§goto(addr885);
                                                                                                            }
                                                                                                            break loop21;
                                                                                                            addr236:
                                                                                                         }
                                                                                                      }
                                                                                                      addr222:
                                                                                                   }
                                                                                                   §§goto(addr846);
                                                                                                }
                                                                                                §§goto(addr236);
                                                                                             }
                                                                                             §§goto(addr430);
                                                                                             §§push(Number((§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).x + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x));
                                                                                          }
                                                                                          §§goto(addr222);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(!_loc13_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          while(_loc12_ || this)
                                                                                          {
                                                                                             §§pop();
                                                                                             §§goto(addr520);
                                                                                          }
                                                                                          _loc8_ = §§pop();
                                                                                       }
                                                                                       continue loop4;
                                                                                       addr509:
                                                                                    }
                                                                                    §§goto(addr656);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr508:
                                                                              while(true)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              §§goto(addr509);
                                                                           }
                                                                           _loc7_ = §§pop();
                                                                           §§goto(addr630);
                                                                        }
                                                                        §§goto(addr512);
                                                                     }
                                                                     break;
                                                                     if(!(_loc13_ && param1))
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc13_ && param1))
                                                                     {
                                                                        §§goto(addr467);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr655);
                                                                     }
                                                                  }
                                                                  addr249:
                                                                  continue loop7;
                                                               }
                                                               if(_loc12_ || _loc2_)
                                                               {
                                                                  this.§5!x§.push(this.§`!_§);
                                                                  §§goto(addr527);
                                                               }
                                                               §§goto(addr828);
                                                            }
                                                            §§goto(addr328);
                                                         }
                                                         §§goto(addr777);
                                                      }
                                                      §§goto(addr448);
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   this.§ P§ = true;
                                                   §§goto(addr479);
                                                }
                                                if(_loc12_ || param1)
                                                {
                                                   §§goto(addr655);
                                                   §§push(this.§@d§());
                                                }
                                                §§goto(addr732);
                                             }
                                             addr643:
                                          }
                                          §§goto(addr708);
                                       }
                                       break;
                                    }
                                    return;
                                 }
                                 §§goto(addr643);
                              }
                           }
                        }
                        §§goto(addr842);
                        §§push(§§pop() / §§pop());
                     }
                     §§goto(addr839);
                  }
                  §§goto(addr830);
                  §§push(Number(§§pop()));
               }
               while(true)
               {
                  §§pop().assign(§,!s§.§ Q§.getScore());
                  §§goto(addr854);
                  §§goto(addr860);
               }
            }
            §§goto(addr880);
         }
         §§goto(addr376);
      }
      
      protected function §@b§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §-!Q§.§#3§("Hiscore_Star_Splash1",§+!r§);
         }
         do
         {
            (§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).mClip.gotoAndStop("Lit");
         }
         while(_loc2_ && _loc1_);
         
         return false;
      }
      
      protected function §@d§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!Q§.§#3§("Hiscore_Star_Splash2",§+!r§);
            do
            {
               (§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).mClip.gotoAndStop("Lit");
            }
            while(_loc1_);
            
         }
         return false;
      }
      
      protected function §0F§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §-!Q§.§#3§("Hiscore_Star_Splash3",§+!r§);
         }
         do
         {
            (§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).mClip.gotoAndStop("Lit");
         }
         while(_loc1_ && _loc2_);
         
         return false;
      }
      
      private function §6<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!Q§.§^B§(§[!<§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§;!J§ = null;
         §§push(super.run(param1));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || this)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() == §9![§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §'!Q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                     loop1:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           continue loop0;
                        }
                        if(_loc6_)
                        {
                           §'!Q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                           if(!(_loc6_ || _loc2_))
                           {
                              continue;
                           }
                           while(true)
                           {
                              if(true)
                              {
                                 break loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                     addr89:
                     for each(_loc3_ in this.§5!x§)
                     {
                        if(_loc6_)
                        {
                           _loc3_.update(param1);
                        }
                     }
                     if(_loc6_ || param1)
                     {
                        if(this.§]!F§ > -1)
                        {
                           while(true)
                           {
                              this.§ ""§(param1);
                              addr178:
                              while(true)
                              {
                              }
                              addr160:
                              if(_loc6_ || this)
                              {
                                 §,!s§.§=!I§.clearLevel();
                                 return §9![§.STATE_STATUS_COMPLETED;
                              }
                           }
                        }
                        while(mNextState.length > 0)
                        {
                           if(!_loc6_)
                           {
                              continue;
                           }
                           §§goto(addr160);
                        }
                        return §9![§.STATE_STATUS_RUNNING;
                     }
                     §§goto(addr178);
                  }
               }
               §§push(_loc2_);
               if(_loc6_ || this)
               {
                  return §§pop();
               }
            }
            §§goto(addr89);
         }
         §§goto(addr48);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               this.§[d§();
               loop1:
               while(true)
               {
                  this.§]!F§ = 0;
                  loop2:
                  while(true)
                  {
                     this.mNewScoreCounter = 0;
                     loop3:
                     while(true)
                     {
                        §§push(this.§"!g§);
                        if(!_loc1_)
                        {
                           if(§§pop())
                           {
                              loop22:
                              while(true)
                              {
                                 §§push(this.§"!g§);
                                 addr232:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    loop20:
                                    while(_loc2_)
                                    {
                                       this.§"!g§ = null;
                                       loop21:
                                       while(true)
                                       {
                                          if(_loc1_ && _loc2_)
                                          {
                                             continue loop20;
                                          }
                                          addr223:
                                          while(true)
                                          {
                                             §§push(this.§7!3§);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§7!3§);
                                                      addr200:
                                                      while(true)
                                                      {
                                                         §§pop().stop();
                                                         addr201:
                                                         while(true)
                                                         {
                                                            this.§7!3§ = null;
                                                            addr186:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr198:
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   §-!Q§.§^B§(§[!<§);
                                                   while(true)
                                                   {
                                                      this.setButtonStates(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                      while(_loc2_)
                                                      {
                                                         continue loop1;
                                                         loop15:
                                                         while(!(_loc1_ && this))
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  addr135:
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§`!%§);
                                                                     if(_loc1_)
                                                                     {
                                                                        loop11:
                                                                        while(§§pop())
                                                                        {
                                                                           if(_loc1_ && this)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           addr70:
                                                                           if(_loc1_ && _loc1_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §§push(this.§`!%§);
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§goto(addr201);
                                                                                 §§goto(addr70);
                                                                              }
                                                                              continue loop22;
                                                                              addr141:
                                                                           }
                                                                           if(!(_loc2_ || _loc2_))
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           if(!§'!Q§.movieClip.contains(this.§`!%§))
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr90);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§pop().clean();
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              if(!(_loc1_ && _loc1_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                           addr90:
                                                                           addr90:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc1_ && _loc2_))
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  continue loop20;
                                                               }
                                                               continue loop22;
                                                            }
                                                            §§goto(addr198);
                                                            §§goto(addr201);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr200);
                                             §§goto(addr223);
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              addr230:
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr232);
                     }
                  }
               }
            }
         }
         §§goto(addr230);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(param1);
               while(true)
               {
                  (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setComponentVisualState(param1);
                  while(_loc2_ || param1)
                  {
                     continue loop0;
                     (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setComponentVisualState(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        return;
                        addr48:
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      private function §[d§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§;!J§ = null;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§[!D§)
            {
               if(!_loc4_)
               {
                  addr37:
                  this.§[!D§.stop();
               }
               try
               {
                  this.§[!D§.removeEventListener(TimerEvent.TIMER,this.§;h§);
                  if(!_loc5_)
                  {
                  }
               }
               catch(e:Error)
               {
               }
               do
               {
                  this.§>!0§();
               }
               while(!(_loc5_ || _loc2_));
               
               return;
               addr171:
            }
            var _loc2_:int = 0;
            if(!_loc4_)
            {
               var _loc3_:* = this.§5!x§;
               if(!(_loc4_ && this))
               {
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     loop2:
                     while(true)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                        loop3:
                        while(true)
                        {
                           addr104:
                           while(true)
                           {
                              if(§'!Q§.contains(splash))
                              {
                                 if(!_loc4_)
                                 {
                                    §'!Q§.removeChild(splash);
                                 }
                                 continue loop3;
                              }
                              addr89:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(!_loc4_)
                                 {
                                    addr93:
                                    §§pop().§§slot[1].clean();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  addr146:
                  if(_loc5_)
                  {
                     this.§5!x§ = new Vector.<§;!J§>();
                  }
                  §§goto(addr171);
                  addr143:
               }
               while(true)
               {
                  if(true)
                  {
                     §§goto(addr143);
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr146);
         }
         §§goto(addr37);
      }
      
      protected function §>!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§'!Q§.getItemByName("TextField_BestScore") as §54§).setVisibility(false);
            while(true)
            {
               (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).setVisibility(false);
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     (§'!Q§.getItemByName("TextField_NewHighScore") as §54§).setVisibility(false);
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      protected function §4>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3!;§.§9!G§();
         }
         do
         {
            mNextState = this.§0"#§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               §§push("NEXT_LEVEL");
               if(!(_loc6_ && param1))
               {
                  §§push(_loc5_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && param1))
                        {
                           §§push(0);
                           if(!(_loc7_ || param2))
                           {
                              addr216:
                           }
                        }
                        else
                        {
                           addr241:
                           §§push(3);
                           if(!_loc7_)
                           {
                              addr251:
                           }
                        }
                     }
                     else
                     {
                        §§push("REPLAY");
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              addr192:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                       addr256:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             this.§4>§();
                                             break loop0;
                                             addr150:
                                          case 1:
                                             §3!;§.§0!1§();
                                             mNextState = this.§41§();
                                             break;
                                             addr145:
                                          case 2:
                                             §3!;§.§0!1§();
                                             addr114:
                                             if(!(_loc6_ && param2))
                                             {
                                                if(_loc7_)
                                                {
                                                   mNextState = this.§41§();
                                                   while(true)
                                                   {
                                                      §§push(§,!s§.§=!I§);
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§pop().§`!o§());
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop());
                                                         if(_loc6_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc4_ = §§pop());
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc6_ && param3)
                                                            {
                                                               break loop0;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               addr86:
                                                               §,!s§.§=!I§.§!!§(_loc4_);
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     addr48:
                                                                     break loop0;
                                                                  }
                                                                  §§goto(addr145);
                                                               }
                                                               break loop0;
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr48);
                                                      }
                                                      §§goto(addr86);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr150);
                                             }
                                             break;
                                          case 3:
                                             §-!Q§.§4!$§();
                                             loop2:
                                             while(true)
                                             {
                                                addr38:
                                                while(true)
                                                {
                                                   mNextState = this.§1!H§();
                                                   if(!_loc7_)
                                                   {
                                                      break loop0;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      break loop0;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             break;
                                          case 4:
                                             AngryBirdsFP11.§'!g§.§]8§();
                                             if(_loc7_)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   if(true)
                                                   {
                                                      break loop0;
                                                   }
                                                   §§goto(addr38);
                                                }
                                                else
                                                {
                                                   §§goto(addr114);
                                                }
                                             }
                                       }
                                       break;
                                    }
                                    §§goto(addr216);
                                 }
                                 else
                                 {
                                    addr248:
                                    §§push(4);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr251);
                                    }
                                 }
                                 §§goto(addr256);
                              }
                              else
                              {
                                 §§push("WATCH_REPLAY");
                                 if(!_loc6_)
                                 {
                                    addr202:
                                    §§push(_loc5_);
                                    if(_loc7_ || param1)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr216);
                                             }
                                             §§goto(addr256);
                                          }
                                          else
                                          {
                                             §§goto(addr241);
                                          }
                                       }
                                       else
                                       {
                                          §§push("MENU");
                                          if(_loc7_ || param3)
                                          {
                                             addr235:
                                             §§push(_loc5_);
                                             if(_loc6_)
                                             {
                                             }
                                             addr247:
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr248);
                                             }
                                             else
                                             {
                                                §§goto(addr256);
                                                §§push(5);
                                             }
                                             §§goto(addr256);
                                          }
                                          addr246:
                                          §§goto(addr247);
                                          §§push(_loc5_);
                                       }
                                       §§goto(addr256);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr241);
                                       }
                                       else
                                       {
                                          §§goto(addr248);
                                       }
                                    }
                                    else
                                    {
                                       §§push("FULLSCREEN_BUTTON");
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr246);
                              }
                           }
                           §§goto(addr247);
                        }
                        §§goto(addr235);
                     }
                     §§goto(addr256);
                  }
                  §§goto(addr192);
               }
               §§goto(addr202);
            }
            §§goto(addr248);
         }
      }
      
      protected function §41§() : String
      {
         return §3!;§.§'!q§;
      }
      
      protected function §0"#§() : String
      {
         return StateCutScene.§'!q§;
      }
      
      public function §1!H§() : String
      {
         return §2!=§.§'!q§;
      }
   }
}
