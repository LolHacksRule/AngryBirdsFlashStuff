package §9!5§
{
   import §"R§.§ !Q§;
   import §0!N§.LevelManager;
   import §0X§.§&'§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §4L§.§,!_§;
   import §4L§.§3!J§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §true§.§ _§;
   
   public class §'!>§ extends §?Y§
   {
      
      public static const §?h§:String = "LevelEndStateRio";
      
      public static const §+!5§:Number = 30;
      
      protected static const §+%§:String = "ScoreLoopCountChannel";
      
      protected static const §catch§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?h§ = "LevelEndStateRio";
            loop0:
            do
            {
               §+!5§ = 30;
               while(true)
               {
                  §+%§ = "ScoreLoopCountChannel";
                  while(!(_loc1_ && _loc1_))
                  {
                     §catch§ = "EndScreenEffectChannel";
                     if(!(_loc1_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      private var §,M§:§4!Z§;
      
      private var § n§:Number;
      
      private var §-!h§:Number = 0.0;
      
      private var §#`§:Number = 0.0;
      
      private var §]!X§:Boolean = false;
      
      private var §>!j§:Timer;
      
      private var §#x§:§,!_§;
      
      protected var §+!s§:Array;
      
      protected var include:§3!J§;
      
      protected var §0!7§:Vector.<§3!J§>;
      
      public var mNewScoreCounter:int;
      
      private var §"!`§:int;
      
      private var §-Z§:Boolean;
      
      protected var §>!V§:Boolean;
      
      private var §+t§:§&'§;
      
      protected var §[!a§:Boolean;
      
      private var §1!1§:§4!Z§;
      
      protected var §3"§:Boolean;
      
      protected var §#!k§:int;
      
      public function §'!>§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§+!s§ = [];
            while(true)
            {
               this.§+t§ = new §&'§();
               loop1:
               while(!(_loc4_ && _loc3_))
               {
                  while(true)
                  {
                     super(param1,param2);
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §5!P§ = new §'!^§(this);
               do
               {
                  §5!P§.init(this.getViewXML());
                  do
                  {
                     this.initButtonDefaultPositions();
                     loop3:
                     do
                     {
                        this.§0!7§ = new Vector.<§3!J§>();
                        while(_loc1_)
                        {
                           § !Q§.§]!h§(§+%§,1,1);
                           while(!(_loc2_ && _loc2_))
                           {
                              § !Q§.§]!h§(§catch§,3,1);
                              if(!(_loc2_ && this))
                              {
                                 continue loop3;
                              }
                           }
                        }
                        continue loop0;
                     }
                     while(_loc2_);
                     
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               while(!_loc1_);
               
            }
         }
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§+!s§);
            while(true)
            {
               §§pop().push((§5!P§.getItemByName("Button_Menu") as §5!I§).x);
               addr112:
               while(true)
               {
                  §§push(this.§+!s§);
                  while(true)
                  {
                     §§pop().push((§5!P§.getItemByName("Button_Replay") as §5!I§).x);
                     addr102:
                     while(true)
                     {
                        §§push(this.§+!s§);
                        while(true)
                        {
                           §§pop().push((§5!P§.getItemByName("Button_NextLevel") as §5!I§).x);
                           §§goto(addr91);
                        }
                     }
                  }
               }
            }
         }
         addr91:
         while(true)
         {
            §§push(this.§+!s§);
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  continue loop0;
               }
               continue loop2;
            }
            continue loop4;
         }
         addr70:
      }
      
      protected function getViewXML() : XML
      {
         return §[!'§.§+@§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(AngryBirdsFP11.sUserProgress.§%H§(LevelManager.§4Y§))
            {
               (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(true);
               loop0:
               for(; !_loc1_; while(!(_loc1_ && _loc1_))
               {
                  (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(true);
                  §§goto(addr116);
               })
               {
                  if(!_loc1_)
                  {
                     (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
                     while(true)
                     {
                        (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
                        continue loop0;
                        loop4:
                        while(!(_loc1_ && _loc1_))
                        {
                           (§5!P§.getItemByName("Button_Replay") as §5!I§).x = this.§+!s§[1];
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 addr72:
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc2_ || _loc1_)
                                    {
                                       continue;
                                    }
                                    addr264:
                                    (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(false);
                                 }
                                 else
                                 {
                                    while(!_loc1_)
                                    {
                                       (§5!P§.getItemByName("Button_Menu") as §5!I§).x = this.§+!s§[0];
                                       continue loop4;
                                       §§goto(addr72);
                                    }
                                    addr116:
                                 }
                                 (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
                                 (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
                                 break;
                                 addr257:
                              }
                              continue loop4;
                           }
                           (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(true);
                           break loop0;
                        }
                     }
                     if(!(_loc1_ && _loc2_))
                     {
                        if(_loc2_ || this)
                        {
                           if(!_loc1_)
                           {
                              §§goto(addr20);
                           }
                           §§goto(addr248);
                        }
                        (§5!P§.getItemByName("Button_CutScene") as §5!I§).x = this.§+!s§[1] + Math.abs(this.§+!s§[2] - this.§+!s§[1]) / 2;
                        addr220:
                     }
                     addr20:
                     return;
                  }
                  §§goto(addr257);
                  §§goto(addr248);
               }
               (§5!P§.getItemByName("Button_Replay") as §5!I§).x = this.§+!s§[0] + Math.abs(this.§+!s§[1] - this.§+!s§[0]) / 2;
               §§goto(addr220);
            }
            §§goto(addr264);
         }
         §§goto(addr248);
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(true);
            loop0:
            while(true)
            {
               (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
               loop1:
               while(true)
               {
                  (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(false);
                  while(true)
                  {
                     if(LevelManager.§9!j§())
                     {
                        continue;
                     }
                     (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
                     loop3:
                     while(true)
                     {
                        (§5!P§.getItemByName("Button_Menu") as §5!I§).x = this.§+!s§[0] + Math.abs(this.§+!s§[1] - this.§+!s§[0]) / 2;
                        loop4:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(!(_loc2_ || this))
                              {
                                 break;
                              }
                              if(_loc1_)
                              {
                                 while(true)
                                 {
                                    (§5!P§.getItemByName("Button_Menu") as §5!I§).x = this.§+!s§[0];
                                    addr168:
                                    while(_loc2_)
                                    {
                                       (§5!P§.getItemByName("Button_Replay") as §5!I§).x = this.§+!s§[1];
                                       break loop4;
                                    }
                                    addr182:
                                    continue loop0;
                                    (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(true);
                                 }
                                 return;
                              }
                              addr137:
                              addr25:
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        while(true)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              (§5!P§.getItemByName("Button_NextLevel") as §5!I§).x = this.§+!s§[2];
                              §§goto(addr135);
                           }
                           else
                           {
                              §§goto(addr168);
                           }
                        }
                     }
                  }
                  §§goto(addr25);
               }
            }
         }
         §§goto(addr137);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§3"§ = false;
               loop1:
               while(true)
               {
                  § _§.pause();
                  loop2:
                  while(true)
                  {
                     this.§#x§ = new §,!_§(0,0,0,0);
                     loop3:
                     while(true)
                     {
                        §5!P§.movieClip.addChildAt(this.§#x§,§5!P§.movieClip.numChildren - 1);
                        loop4:
                        while(true)
                        {
                           if(!LevelManager.§8!<§())
                           {
                              this.showButtonsNormal();
                              loop5:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc1_ && _loc2_)
                                    {
                                       while(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          this.showButtonsCutScene();
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                break loop5;
                                             }
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       continue loop4;
                                       addr121:
                                    }
                                    while(true)
                                    {
                                       this.mNewScoreCounter = 0;
                                       loop6:
                                       while(true)
                                       {
                                          this.§-Z§ = false;
                                          loop7:
                                          while(_loc2_)
                                          {
                                             § !Q§.playSound("LevelCompletedTheme1");
                                             loop8:
                                             do
                                             {
                                                this.§#x§.§7!+§(0.7);
                                                loop9:
                                                while(!_loc1_)
                                                {
                                                   this.§-!h§ = 0;
                                                   while(_loc2_)
                                                   {
                                                      this.§#`§ = 0;
                                                      while(true)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop3;
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop9;
                                                         continue loop9;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop7;
                                             }
                                             while(!(_loc2_ || this));
                                             
                                             return;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              continue loop1;
                           }
                           §§goto(addr121);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      private function §'!&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§>!V§ = false;
            loop0:
            while(true)
            {
               this.setScoreData();
               loop1:
               while(true)
               {
                  this.§>!j§ = new Timer(500);
                  while(true)
                  {
                     this.§"!`§ = 0;
                     addr82:
                     while(!_loc2_)
                     {
                        continue loop0;
                     }
                     addr60:
                     continue loop1;
                     while(!(_loc2_ && _loc2_))
                     {
                        this.§>!j§.start();
                        if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           return;
                           addr51:
                        }
                        §§goto(addr82);
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      protected function §6b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§4Y§) != 100)
            {
               (§5!P§.getItemByName("MovieClip_ResultMEFeather") as §[I§).mClip.gotoAndStop("Off");
               if(_loc2_)
               {
                  if(!(_loc2_ || this))
                  {
                     addr77:
                     (§5!P§.getItemByName("MovieClip_ResultMEFeather") as §[I§).mClip.gotoAndStop("On");
                     addr85:
                  }
                  return;
               }
               §§goto(addr85);
            }
         }
         §§goto(addr77);
      }
      
      protected function §<U§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            if(this.§[!a§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(param1);
                  if(_loc5_ || param2)
                  {
                     §§push(int(§§pop()));
                  }
                  param2 = §§pop();
               }
               AngryBirdsFP11.sUserProgress.§,!i§(LevelManager.§4Y§,param2);
               while(true)
               {
                  §5!P§.setText("New Highscore!","TextField_BestScore");
               }
               addr152:
               addr131:
            }
            else
            {
               §5!P§.setText("Best " + param2.toString(),"TextField_BestScore");
               do
               {
                  this.§#!k§ = LevelManager.§@!Z§(LevelManager.§4Y§,param2);
               }
               while(!(_loc5_ || param2));
               
               if(!(_loc4_ && param1))
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(this.§#!k§);
                     if(!_loc4_)
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
                                    if(!(_loc4_ && param2))
                                    {
                                       §§push(0);
                                       if(_loc5_ || param2)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr229:
                                       §§push(2);
                                       if(_loc5_)
                                       {
                                          addr232:
                                       }
                                    }
                                    addr238:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).§2!?§("OneStar");
                                          addr41:
                                          break;
                                          addr64:
                                       case 1:
                                          (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).§2!?§("TwoStar");
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          break;
                                       case 2:
                                          (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).§2!?§("ThreeStar");
                                          if(!_loc4_)
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
                                                §§goto(addr64);
                                             }
                                             §§goto(addr41);
                                          }
                                    }
                                    return;
                                    addr237:
                                 }
                                 else
                                 {
                                    §§push(2);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr199:
                                       §§push(_loc3_);
                                       if(!(_loc4_ && param1))
                                       {
                                          addr217:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr220:
                                                §§push(1);
                                                if(!_loc5_)
                                                {
                                                   addr227:
                                                   if(§§pop() === _loc3_)
                                                   {
                                                      §§goto(addr229);
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                   }
                                                }
                                                §§goto(addr237);
                                             }
                                             §§goto(addr229);
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(_loc5_)
                                             {
                                                §§goto(addr227);
                                             }
                                          }
                                          §§goto(addr232);
                                       }
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr217);
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr238);
                  }
                  else
                  {
                     §§goto(addr152);
                  }
               }
            }
            while(_loc4_)
            {
               §§goto(addr131);
            }
         }
         §§goto(addr238);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§4Y§));
         if(_loc7_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§ _§.§?!]§.getScore());
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || _loc3_)
         {
            this.§[!a§ = _loc2_ > _loc1_;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§<U§(_loc2_,_loc1_);
                  do
                  {
                     this.§6b§();
                  }
                  while(_loc8_ && _loc2_);
                  
                  if(_loc8_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  §§push(§ _§.§?!]§.getEagleScore());
                  if(_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§4Y§));
                  if(!(_loc8_ && _loc1_))
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:*;
                  if(_loc5_ = _loc3_ > _loc4_)
                  {
                     if(_loc7_)
                     {
                        §§push(_loc3_);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(int(§§pop()));
                           if(!(_loc8_ && this))
                           {
                              _loc4_ = §§pop();
                              if(_loc7_)
                              {
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 if(_loc7_ || this)
                                 {
                                    §§push(LevelManager.§4Y§);
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc8_ && this))
                                       {
                                          §§pop().§5U§(§§pop(),§§pop());
                                          addr160:
                                          §§push(AngryBirdsFP11.sUserProgress);
                                          §§push(LevelManager.§4Y§);
                                          §§push(_loc2_);
                                       }
                                       §§push(§§pop().getStarsForLevel(§§pop(),§§pop()));
                                       if(!_loc8_)
                                       {
                                          §§goto(addr165);
                                       }
                                       addr165:
                                       var _loc6_:int = §§pop();
                                       §§goto(addr164);
                                    }
                                 }
                              }
                              §§goto(addr160);
                           }
                           addr164:
                           if(!(_loc8_ && _loc3_))
                           {
                              (§5!P§.getItemByName("MovieClip_NewHighScoreBadge") as §[I§).setVisibility(false);
                              while(true)
                              {
                                 (§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).mClip.gotoAndStop("UnLit");
                              }
                              addr241:
                           }
                           loop5:
                           do
                           {
                              (§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).mClip.gotoAndStop("UnLit");
                              while(!_loc8_)
                              {
                                 (§5!P§.getItemByName("MovieClip_StarRight") as §[I§).mClip.gotoAndStop("UnLit");
                                 if(_loc7_ || _loc1_)
                                 {
                                    continue loop5;
                                 }
                              }
                              §§goto(addr241);
                           }
                           while(!(_loc7_ || _loc3_));
                           
                           return;
                        }
                        §§goto(addr165);
                     }
                  }
                  §§goto(addr160);
               }
            }
         }
         §§goto(addr57);
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!this.§[!a§)
            {
               (§5!P§.getItemByName("TextField_BestScore") as §"j§).setVisibility(true);
               do
               {
                  (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).setVisibility(true);
               }
               while(!(_loc1_ || _loc2_));
               
               if(_loc1_ || _loc2_)
               {
                  if(!_loc1_)
                  {
                     addr138:
                     § !Q§.playSound("Hiscore_Badge",§catch§);
                     loop3:
                     while(true)
                     {
                        §5!P§.setText("New Highscore!","TextField_NewHighScore");
                        addr127:
                        while(_loc2_ && this)
                        {
                           continue loop3;
                        }
                        addr121:
                        addr112:
                        (§5!P§.getItemByName("TextField_NewHighScore") as §"j§).setVisibility(true);
                        (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).setVisibility(false);
                        loop4:
                        while(true)
                        {
                           this.§5!§();
                           addr77:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop4;
                              }
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(_loc1_ || this)
                                 {
                                    break;
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr121);
                              continue loop4;
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr77);
            }
            §§goto(addr138);
         }
         §§goto(addr112);
      }
      
      protected function §5!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§-!h§ = 0;
            while(true)
            {
               this.§#`§ = 0;
               while(_loc1_)
               {
                  this.§ n§ = §+!5§;
                  if(_loc1_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §[!f§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x = (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x - this.§-!h§;
         }
         while(true)
         {
            (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y = (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y - this.§#`§;
            loop1:
            while(_loc2_ || this)
            {
               if(this.§ n§ <= 0)
               {
                  this.§ n§ = -1;
                  loop2:
                  while(true)
                  {
                     if(_loc2_ || param1)
                     {
                        this.§%!&§();
                        loop3:
                        while(true)
                        {
                           this.§-!h§ = 0;
                           while(true)
                           {
                              this.§#`§ = 0;
                              loop5:
                              while(!(_loc3_ && _loc2_))
                              {
                                 continue loop3;
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§ n§);
                                    if(_loc2_)
                                    {
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() / 10);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§ n§ = §§pop();
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          return;
                                       }
                                       addr111:
                                       while(true)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             if(_loc2_ || param1)
                                             {
                                                break;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(Math.random() - 0.5);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(this.§ n§);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() / §+!5§);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * 20);
                                                   }
                                                }
                                                §§pop().§#`§ = §§pop();
                                                addr193:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(Math.random() - 0.5);
                                                   if(_loc2_ || this)
                                                   {
                                                      §§push(this.§ n§);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() / §+!5§);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc2_ || this)
                                                      {
                                                         §§push(§§pop() * 20);
                                                      }
                                                   }
                                                   §§pop().§-!h§ = §§pop();
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          while(!_loc2_)
                                          {
                                             §§goto(addr193);
                                          }
                                          (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x = (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x + this.§-!h§;
                                       }
                                       (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y = (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y + this.§#`§;
                                       while(_loc2_)
                                       {
                                          continue loop6;
                                       }
                                       continue loop1;
                                    }
                                    continue loop5;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr193);
            }
         }
      }
      
      protected function §%!&§() : void
      {
      }
      
      private function §]!V§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = LevelManager.§-V§(LevelManager.§4Y§).§>!o§;
         var _loc5_:Number = LevelManager.§-V§(LevelManager.§4Y§).§8!l§;
         if(_loc9_)
         {
            if((§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§+t§);
               loop0:
               for(; !(_loc10_ && _loc2_); §§push(this.§+t§),if(!(_loc9_ || _loc2_))
               {
                  continue;
               },if(_loc9_)
               {
                  §§push(§§pop().getValue());
                  if(_loc9_)
                  {
                     §§push(_loc4_);
                     if(_loc9_)
                     {
                        §§goto(addr491);
                        §§push(§§pop() >= §§pop());
                     }
                     §§goto(addr634);
                  }
                  §§goto(addr626);
               },§§goto(addr808))
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(_loc9_ || _loc2_)
                  {
                     §§push(_loc5_);
                     loop2:
                     while(!_loc10_)
                     {
                        §§push(§§pop() >= §§pop());
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
                                    addr640:
                                    while(true)
                                    {
                                       §§push((§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).mClip.currentLabel == "UnLit");
                                    }
                                 }
                                 addr639:
                              }
                              while(true)
                              {
                                 while(!§§pop())
                                 {
                                    continue loop0;
                                    addr255:
                                    if(!(_loc9_ || this))
                                    {
                                       continue;
                                    }
                                    if(!§§pop())
                                    {
                                       addr263:
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          this.§-Z§ = true;
                                          addr273:
                                          if(!(_loc10_ && this))
                                          {
                                             if(_loc10_)
                                             {
                                                addr403:
                                                if(!(_loc9_ || _loc2_))
                                                {
                                                   loop12:
                                                   while(_loc9_ || param1)
                                                   {
                                                      §§push((§5!P§.getItemByName("MovieClip_StarRight") as §[I§).mClip.currentLabel == "UnLit");
                                                      loop13:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(this.§-Z§);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     §§goto(addr255);
                                                                  }
                                                                  addr495:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     break loop15;
                                                                  }
                                                               }
                                                               continue loop12;
                                                               addr248:
                                                            }
                                                            addr457:
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               this.§3"§ = true;
                                                               if(!_loc10_)
                                                               {
                                                                  § !Q§.playSound("Hiscore_Star_Splash3",§catch§);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        (§5!P§.getItemByName("MovieClip_StarRight") as §[I§).mClip.gotoAndStop("Lit");
                                                                        §§goto(addr403);
                                                                     }
                                                                     addr510:
                                                                     if(_loc10_)
                                                                     {
                                                                        this.§0!7§.push(this.include);
                                                                        addr660:
                                                                        if(_loc10_ && this)
                                                                        {
                                                                           §5!P§.addChild(this.include);
                                                                           addr674:
                                                                           §§goto(addr660);
                                                                           addr674:
                                                                        }
                                                                        addr654:
                                                                     }
                                                                     addr850:
                                                                     var _loc7_:*;
                                                                     §§push((_loc7_ = this).§"!`§);
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     var _loc8_:* = §§pop();
                                                                     if(!_loc10_)
                                                                     {
                                                                        _loc7_.§"!`§ = _loc8_;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr870);
                                                            }
                                                            addr518:
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               this.§0!7§.push(this.include);
                                                               §§goto(addr510);
                                                            }
                                                            else
                                                            {
                                                               addr755:
                                                               §§push(this.§1!1§);
                                                               if(!_loc10_)
                                                               {
                                                                  addr747:
                                                                  §§pop().play();
                                                                  (§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).mClip.gotoAndStop("Lit");
                                                                  §§push(Number((§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).x + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x));
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           addr690:
                                                                           §§push(Number((§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).y + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y));
                                                                           if(!(_loc9_ || _loc2_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           this.include = new §3!J§(AngryBirdsFP11.§>!2§,AngryBirdsFP11.§@U§,_loc2_,_loc3_,§3!J§.§=?§);
                                                                           §§goto(addr674);
                                                                        }
                                                                        addr779:
                                                                        addr789:
                                                                        while(true)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        addr802:
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              § !Q§.playSound("Hiscore_Star_Splash1",§catch§);
                                                                              addr824:
                                                                              addr808:
                                                                              addr812:
                                                                              this.§>!j§.delay = 1000;
                                                                              addr818:
                                                                              this.§+t§.assign(§ _§.§?!]§.getScore());
                                                                              §§push(this.§+t§);
                                                                              break loop0;
                                                                           }
                                                                           addr849:
                                                                        }
                                                                        §§goto(addr690);
                                                                     }
                                                                     addr801:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc10_)
                                                                     {
                                                                        break;
                                                                        addr756:
                                                                     }
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        §§goto(addr779);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§1!1§ = §,!b§.§<d§.§>a§(this,{"mNewScoreCounter":this.§+t§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                        addr772:
                                                                        §§push(this.§1!1§);
                                                                        addr752:
                                                                        while(true)
                                                                        {
                                                                           §§pop().onComplete = this.§4^§;
                                                                           §§goto(addr755);
                                                                        }
                                                                        §§goto(addr747);
                                                                     }
                                                                     §§goto(addr747);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc10_ && _loc2_))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr801);
                                                                  }
                                                                  addr741:
                                                                  addr792:
                                                                  addr748:
                                                               }
                                                               §§goto(addr752);
                                                            }
                                                            addr179:
                                                            if(§§pop())
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        (§5!P§.getItemByName("MovieClip_NewHighScoreBadge") as §[I§).setVisibility(true);
                                                                        if(_loc9_)
                                                                        {
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              this.§,M§ = §,!b§.§<d§.§>a§((§5!P§.getItemByName("MovieClip_NewHighScoreBadge") as §[I§).mClip,{
                                                                                 "scaleX":1,
                                                                                 "scaleY":1
                                                                              },{
                                                                                 "scaleX":7,
                                                                                 "scaleY":7
                                                                              },0.1);
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr111:
                                                                                 if(!(_loc9_ || this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc9_ || _loc3_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§,M§);
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().onComplete = this.onBadgeLanded;
                                                                                             while(_loc9_ || _loc3_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(this.§,M§);
                                                                                                   if(!(_loc9_ || this))
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   §§pop().play();
                                                                                                   if(!(_loc10_ && _loc2_))
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            §§goto(addr850);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr263);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  if(_loc9_ || param1)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  addr844:
                                                                                                                  § !Q§.playSound("Hiscore_Count",§+%§,100);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr393:
                                                                                                                  §§push(Number((§5!P§.getItemByName("MovieClip_StarRight") as §[I§).y + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y));
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     addr383:
                                                                                                                     if(!(_loc10_ && this))
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           §§goto(addr393);
                                                                                                                        }
                                                                                                                        §§goto(addr747);
                                                                                                                     }
                                                                                                                     addr555:
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        addr578:
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              break loop12;
                                                                                                                           }
                                                                                                                           addr783:
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           addr784:
                                                                                                                           §§goto(addr756);
                                                                                                                        }
                                                                                                                        §§goto(addr690);
                                                                                                                     }
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           this.include = new §3!J§(AngryBirdsFP11.§>!2§,AngryBirdsFP11.§@U§,_loc2_,_loc3_,§3!J§.§#!-§);
                                                                                                                           §5!P§.addChild(this.include);
                                                                                                                           §§goto(addr518);
                                                                                                                           addr539:
                                                                                                                        }
                                                                                                                        §§goto(addr741);
                                                                                                                     }
                                                                                                                     §§goto(addr698);
                                                                                                                  }
                                                                                                                  if(_loc9_ || _loc3_)
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     this.include = new §3!J§(AngryBirdsFP11.§>!2§,AngryBirdsFP11.§@U§,_loc2_,_loc3_,§3!J§.§]T§);
                                                                                                                     addr367:
                                                                                                                     if(!(_loc10_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(_loc9_ || param1)
                                                                                                                        {
                                                                                                                           §5!P§.addChild(this.include);
                                                                                                                           if(!(_loc10_ && this))
                                                                                                                           {
                                                                                                                              this.§0!7§.push(this.include);
                                                                                                                              addr293:
                                                                                                                              if(_loc10_ && _loc2_)
                                                                                                                              {
                                                                                                                                 §§goto(addr539);
                                                                                                                              }
                                                                                                                              §§goto(addr510);
                                                                                                                           }
                                                                                                                           §§goto(addr870);
                                                                                                                        }
                                                                                                                        §§goto(addr818);
                                                                                                                     }
                                                                                                                     addr870:
                                                                                                                     return;
                                                                                                                     addr367:
                                                                                                                  }
                                                                                                                  addr791:
                                                                                                                  §§goto(addr792);
                                                                                                                  §§push(2);
                                                                                                               }
                                                                                                               §§goto(addr849);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr273);
                                                                                                            }
                                                                                                         }
                                                                                                         addr138:
                                                                                                      }
                                                                                                      §§goto(addr273);
                                                                                                   }
                                                                                                   §§goto(addr870);
                                                                                                }
                                                                                                §§goto(addr824);
                                                                                             }
                                                                                             §§goto(addr818);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr772);
                                                                                 }
                                                                                 §§goto(addr293);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§[!a§);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!(_loc10_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(this.§>!V§);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr784);
                                                                                                         }
                                                                                                         §§goto(addr748);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   addr491:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr492:
                                                                                                      while(!_loc10_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr248);
                                                                                                }
                                                                                                §§goto(addr495);
                                                                                             }
                                                                                             §§goto(addr870);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr492);
                                                                                    }
                                                                                    §§goto(addr179);
                                                                                    addr215:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr639);
                                                                                 }
                                                                                 §§goto(addr640);
                                                                              }
                                                                              §§goto(addr215);
                                                                              §§goto(addr111);
                                                                           }
                                                                           §§goto(addr518);
                                                                           addr201:
                                                                           addr242:
                                                                        }
                                                                        §§goto(addr870);
                                                                     }
                                                                     (§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).mClip.gotoAndStop("Lit");
                                                                     addr593:
                                                                     if(_loc9_)
                                                                     {
                                                                        §§goto(addr578);
                                                                        §§push(Number((§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).x + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x));
                                                                     }
                                                                     §§goto(addr802);
                                                                     addr612:
                                                                  }
                                                                  §§goto(addr457);
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            (§5!P§.getItemByName("MovieClip_NewHighScoreBadge") as §[I§).setVisibility(false);
                                                            §§goto(addr138);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr555);
                                                   §§push(Number((§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).y + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y));
                                                }
                                                if(!_loc9_)
                                                {
                                                   break;
                                                }
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§goto(addr383);
                                                   §§push(Number((§5!P§.getItemByName("MovieClip_StarRight") as §[I§).x + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x));
                                                }
                                                §§goto(addr660);
                                             }
                                             if(_loc9_)
                                             {
                                                if(_loc10_)
                                                {
                                                   §§goto(addr593);
                                                }
                                                §§goto(addr510);
                                             }
                                             §§goto(addr383);
                                          }
                                          §§goto(addr367);
                                       }
                                       §§goto(addr640);
                                    }
                                    this.§>!j§.stop();
                                    §§goto(addr242);
                                 }
                                 § !Q§.playSound("Hiscore_Star_Splash2",§catch§);
                                 §§goto(addr612);
                              }
                           }
                        }
                     }
                     §§goto(addr791);
                     §§push(§§pop() / §§pop());
                  }
                  if(!_loc10_)
                  {
                     §§goto(addr783);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr789);
               }
               while(true)
               {
                  §§goto(addr789);
                  §§goto(addr812);
               }
            }
            §§goto(addr844);
         }
         §§goto(addr654);
      }
      
      private function §4^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § !Q§.§9!t§(§+%§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§3!J§ = null;
         §§push(super.run(param1));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() == §?Y§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §5!P§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                     while(true)
                     {
                        if(!(_loc7_ || param1))
                        {
                           §§push(_loc2_);
                           if(!(_loc6_ && this))
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr74:
                        }
                        §5!P§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                        if(_loc6_ && param1)
                        {
                           continue;
                           break;
                        }
                        if(!(_loc6_ && _loc2_))
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr74);
            }
            for each(_loc3_ in this.§0!7§)
            {
               if(!_loc6_)
               {
                  _loc3_.update(param1);
               }
            }
            if(_loc7_)
            {
               if(this.§ n§ > -1)
               {
                  if(_loc7_ || _loc3_)
                  {
                     this.§[!f§(param1);
                  }
               }
               if(mNextState.length <= 0)
               {
                  return §?Y§.STATE_STATUS_RUNNING;
               }
            }
            § _§.§!6§.clearLevel();
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         §§goto(addr74);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
            loop0:
            while(true)
            {
               this.§7!`§();
               while(true)
               {
                  this.§ n§ = 0;
                  while(true)
                  {
                     this.mNewScoreCounter = 0;
                     while(true)
                     {
                        §§push(this.§1!1§);
                        if(!_loc1_)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§,M§);
                                 if(!_loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§,M§);
                                          addr185:
                                          while(true)
                                          {
                                             §§pop().stop();
                                             addr186:
                                             while(true)
                                             {
                                                this.§,M§ = null;
                                                addr176:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                       }
                                       addr183:
                                    }
                                    while(true)
                                    {
                                       § !Q§.§9!t§(§+%§);
                                       while(true)
                                       {
                                          this.setButtonStates(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §5!P§.setText("0","TextField_LevelEndScore");
                                                   continue;
                                                }
                                                addr210:
                                                addr210:
                                                while(true)
                                                {
                                                   §§push(this.§1!1§);
                                                   addr212:
                                                   while(true)
                                                   {
                                                      §§pop().stop();
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr183);
                                             }
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                 }
                                 §§goto(addr185);
                              }
                           }
                           §§goto(addr210);
                        }
                        §§goto(addr212);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this.§#x§);
                           loop11:
                           for(; §§pop(); while(true)
                           {
                              §§push(this.§#x§);
                              if(!(_loc2_ || _loc2_))
                              {
                                 break;
                              }
                              §§pop().clean();
                              §§goto(addr59);
                              addr112:
                           })
                           {
                              if(_loc2_ || this)
                              {
                                 if(!§5!P§.movieClip.contains(this.§#x§))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §5!P§.movieClip.removeChild(this.§#x§);
                                    addr61:
                                    if(!(_loc2_ || this))
                                    {
                                       continue;
                                    }
                                    this.§#x§ = null;
                                    addr68:
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       while(_loc2_)
                                       {
                                          §§goto(addr61);
                                          §§goto(addr68);
                                       }
                                       §§goto(addr91);
                                       addr59:
                                    }
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       break loop11;
                                    }
                                    §§goto(addr191);
                                 }
                              }
                              §§goto(addr91);
                           }
                           return;
                        }
                     }
                     if(_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr112);
                  }
               }
            }
         }
         §§goto(addr210);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(param1);
               while(true)
               {
                  (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setComponentVisualState(param1);
                  while(_loc3_ || _loc2_)
                  {
                     continue loop0;
                     (§5!P§.getItemByName("Button_CutScene") as §5!I§).setComponentVisualState(param1);
                     if(_loc3_ || _loc2_)
                     {
                        return;
                        addr49:
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §7!`§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§3!J§ = null;
         if(!_loc4_)
         {
            if(this.§>!j§)
            {
               if(!(_loc4_ && this))
               {
                  this.§>!j§.stop();
                  try
                  {
                     addr40:
                     this.§>!j§.removeEventListener(TimerEvent.TIMER,this.§]!V§);
                     if(_loc5_)
                     {
                        addr63:
                        var _loc2_:int = 0;
                        if(!(_loc4_ && _loc3_))
                        {
                           var _loc3_:* = this.§0!7§;
                           if(!(_loc4_ && this))
                           {
                              while(§§hasnext(_loc3_,_loc2_))
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                                 }
                              }
                              addr151:
                              if(!(_loc4_ && _loc2_))
                              {
                                 this.§0!7§ = new Vector.<§3!J§>();
                                 do
                                 {
                                    this.§-!Q§();
                                 }
                                 while(!(_loc5_ || _loc3_));
                                 
                                 return;
                                 addr174:
                                 addr181:
                              }
                              §§goto(addr174);
                              addr138:
                           }
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 if(§5!P§.contains(splash))
                                 {
                                    if(_loc5_)
                                    {
                                       §5!P§.removeChild(splash);
                                    }
                                    while(true)
                                    {
                                       addr98:
                                       §§pop().§§slot[1].clean();
                                       if(_loc4_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(_loc4_ && this)
                                       {
                                          continue loop2;
                                       }
                                       if(false)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr138);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_)
                                    {
                                       §§goto(addr98);
                                    }
                                    break;
                                 }
                                 §§goto(addr132);
                              }
                           }
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr181);
                  }
                  catch(e:Error)
                  {
                  }
                  §§goto(addr174);
               }
               §§goto(addr40);
            }
            §§goto(addr63);
         }
         §§goto(addr40);
      }
      
      protected function §-!Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§5!P§.getItemByName("TextField_BestScore") as §"j§).setVisibility(false);
         }
         do
         {
            (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).setVisibility(false);
            do
            {
               (§5!P§.getItemByName("TextField_NewHighScore") as §"j§).setVisibility(false);
            }
            while(_loc1_);
            
         }
         while(!_loc2_);
         
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
      
      protected function §>!O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#!c§.§ !0§();
         }
         do
         {
            mNextState = this.§>!_§();
         }
         while(_loc1_);
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc6_ || param3)
            {
               §§push("NEXT_LEVEL");
               if(_loc6_)
               {
                  §§push(_loc5_);
                  if(!(_loc7_ && param3))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc7_ && param3))
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr245:
                           }
                        }
                        else
                        {
                           addr270:
                           §§push(3);
                           if(!(_loc7_ && this))
                           {
                              addr278:
                           }
                           else
                           {
                              addr290:
                           }
                        }
                     }
                     else
                     {
                        §§push("REPLAY");
                        if(_loc6_)
                        {
                           §§push(_loc5_);
                           if(!(_loc7_ && this))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_ || param1)
                                 {
                                    addr219:
                                    §§push(1);
                                    if(_loc7_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr270);
                                 }
                              }
                              else
                              {
                                 §§push("WATCH_REPLAY");
                                 if(_loc6_)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc7_ && this))
                                    {
                                       addr234:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(2);
                                             if(!_loc7_)
                                             {
                                                §§goto(addr245);
                                             }
                                             §§goto(addr295);
                                          }
                                          §§goto(addr270);
                                          §§goto(addr278);
                                       }
                                       else
                                       {
                                          §§push("MENU");
                                          if(_loc6_ || param3)
                                          {
                                             addr254:
                                             §§push(_loc5_);
                                             if(_loc6_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr270);
                                                   }
                                                }
                                                else
                                                {
                                                   addr280:
                                                   if("FULLSCREEN_BUTTON" !== _loc5_)
                                                   {
                                                      addr295:
                                                      loop6:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            this.§>!O§();
                                                            break;
                                                            addr164:
                                                         case 1:
                                                            §#!c§.§6d§();
                                                            mNextState = this.§<!9§();
                                                            break;
                                                            addr159:
                                                            addr153:
                                                         case 2:
                                                            §#!c§.§6d§();
                                                            addr123:
                                                            if(!(_loc7_ && this))
                                                            {
                                                               if(_loc6_ || param3)
                                                               {
                                                                  mNextState = this.§<!9§();
                                                                  loop1:
                                                                  while(true)
                                                                  {
                                                                     §§push(§ _§.§!6§);
                                                                     if(_loc7_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop().§7!G§());
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc6_ || param3))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§push(_loc4_ = §§pop());
                                                                        if(_loc7_ && param1)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        addr66:
                                                                        break loop6;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§ _§.§!6§);
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                            §§goto(addr153);
                                                         case 3:
                                                            § !Q§.§"!"§();
                                                            while(true)
                                                            {
                                                               addr49:
                                                               while(true)
                                                               {
                                                                  mNextState = this.§5!-§();
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        break loop6;
                                                                     }
                                                                     §§goto(addr123);
                                                                  }
                                                                  break loop6;
                                                               }
                                                            }
                                                            break;
                                                         case 4:
                                                            AngryBirdsFP11.§3!a§.§8!d§();
                                                            if(_loc6_ || param1)
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr49);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr164);
                                                                  }
                                                               }
                                                               §§goto(addr103);
                                                            }
                                                      }
                                                      return;
                                                      §§push(5);
                                                   }
                                                }
                                                §§goto(addr295);
                                                §§goto(addr295);
                                             }
                                          }
                                          §§goto(addr280);
                                       }
                                    }
                                 }
                                 §§goto(addr280);
                              }
                           }
                           §§goto(addr234);
                        }
                        §§goto(addr254);
                     }
                     §§goto(addr295);
                  }
                  §§goto(addr234);
               }
               §§goto(addr254);
            }
            §§goto(addr219);
         }
      }
      
      protected function §<!9§() : String
      {
         return §#!c§.§?h§;
      }
      
      protected function §>!_§() : String
      {
         return StateCutScene.§?h§;
      }
      
      public function §5!-§() : String
      {
         return § B§.§?h§;
      }
   }
}
