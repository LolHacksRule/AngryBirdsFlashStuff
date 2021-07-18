package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§9!D§;
   import §>0§.§-!x§;
   import §>0§.§3"K§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § if§ extends §+d§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const §^"A§:Number = 30;
      
      protected static const §>!V§:String = "ScoreLoopCountChannel";
      
      protected static const §+"1§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || § if§)
         {
            STATE_NAME = "LevelEndStateRio";
         }
         loop0:
         while(true)
         {
            §^"A§ = 30;
            loop1:
            do
            {
               §>!V§ = "ScoreLoopCountChannel";
               while(_loc2_)
               {
                  §+"1§ = "EndScreenEffectChannel";
                  if(!_loc1_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!(_loc2_ || _loc1_));
            
            return;
         }
      }
      
      private var §+1§:§6!K§;
      
      private var §0!U§:Number;
      
      private var §@!8§:Number = 0.0;
      
      private var §&!a§:Number = 0.0;
      
      private var §8!w§:Boolean = false;
      
      private var §!r§:Timer;
      
      private var §;!@§:§3"K§;
      
      protected var §'!U§:Array;
      
      protected var §3Z§:§-!x§;
      
      protected var §%q§:Vector.<§-!x§>;
      
      public var mNewScoreCounter:int;
      
      private var §[2§:int;
      
      private var §-!L§:Boolean;
      
      protected var §4!C§:Boolean;
      
      private var §7"U§:§9!D§;
      
      protected var §1!u§:Boolean;
      
      private var §-I§:§6!K§;
      
      protected var §-U§:Boolean;
      
      protected var §=!G§:int;
      
      public function § if§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§'!U§ = [];
            while(true)
            {
               this.§7"U§ = new §9!D§();
               §§goto(addr54);
            }
         }
         addr54:
         while(true)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               if(!(_loc3_ && param2))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            loop0:
            while(true)
            {
               §2"@§ = new §`_§(this);
               while(true)
               {
                  §2"@§.init(this.§+!"§());
                  addr97:
                  while(true)
                  {
                     this.§4"S§();
                     while(true)
                     {
                        this.§%q§ = new Vector.<§-!x§>();
                        addr85:
                        while(!_loc1_)
                        {
                        }
                        continue loop0;
                        addr37:
                        if(!(_loc1_ && _loc2_))
                        {
                           return;
                           addr54:
                        }
                     }
                  }
                  addr65:
                  if(_loc1_)
                  {
                     continue;
                  }
                  §@"M§.§set §(§+"1§,3,1);
                  if(!_loc1_)
                  {
                     §§goto(addr37);
                  }
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(!_loc1_)
                        {
                           §§goto(addr65);
                        }
                        else
                        {
                           §§goto(addr97);
                        }
                     }
                     break;
                     §§goto(addr77);
                  }
                  addr77:
                  §§goto(addr85);
               }
            }
         }
         while(true)
         {
            §@"M§.§set §(§>!V§,1,1);
            §§goto(addr61);
         }
         §§goto(addr54);
      }
      
      protected function §4"S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§'!U§);
            loop0:
            while(true)
            {
               §§pop().push((§2"@§.getItemByName("Button_Menu") as §7"0§).x);
               loop1:
               while(true)
               {
                  §§push(this.§'!U§);
                  while(!_loc1_)
                  {
                     §§pop().push((§2"@§.getItemByName("Button_Replay") as §7"0§).x);
                     while(!(_loc1_ && _loc2_))
                     {
                        §§pop().push((§2"@§.getItemByName("Button_NextLevel") as §7"0§).x);
                        loop5:
                        while(true)
                        {
                           §§push(this.§'!U§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§pop().push((§2"@§.getItemByName("Button_CutScene") as §7"0§).x);
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    break loop5;
                                 }
                                 addr93:
                              }
                              return;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr93);
      }
      
      protected function §+!"§() : XML
      {
         return § "<§.§%I§.Views.View_LevelEndRio[0];
      }
      
      protected function §-F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(AngryBirdsFP11.sUserProgress.§>!<§(LevelManager.§ T§))
            {
               (§2"@§.getItemByName("Button_Menu") as §7"0§).setVisibility(true);
               loop0:
               while(true)
               {
                  (§2"@§.getItemByName("Button_Replay") as §7"0§).setVisibility(true);
                  loop1:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
                           loop2:
                           for(; _loc1_; loop4:
                           while(true)
                           {
                              if(!(_loc2_ && this))
                              {
                                 continue loop1;
                              }
                              continue loop2;
                              addr65:
                              while(true)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop4;
                                 addr86:
                                 (§2"@§.getItemByName("Button_CutScene") as §7"0§).x = this.§'!U§[2];
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr46);
                              }
                              §§goto(addr24);
                           },continue loop1)
                           {
                              if(_loc2_)
                              {
                                 (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(true);
                                 break loop1;
                                 addr257:
                              }
                              (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(true);
                              while(true)
                              {
                                 (§2"@§.getItemByName("Button_Menu") as §7"0§).x = this.§'!U§[0];
                                 continue loop2;
                                 addr46:
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§goto(addr24);
                                 }
                              }
                           }
                           addr24:
                           return;
                           addr194:
                        }
                        (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
                        §§goto(addr257);
                        addr266:
                     }
                     break;
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     (§2"@§.getItemByName("Button_Replay") as §7"0§).x = this.§'!U§[1];
                     §§goto(addr65);
                  }
                  addr231:
                  if(_loc1_ || _loc1_)
                  {
                     (§2"@§.getItemByName("Button_Replay") as §7"0§).x = this.§'!U§[0] + Math.abs(this.§'!U§[1] - this.§'!U§[0]) / 2;
                     addr220:
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           (§2"@§.getItemByName("Button_Replay") as §7"0§).setVisibility(true);
                           §§goto(addr266);
                        }
                        addr280:
                     }
                     (§2"@§.getItemByName("Button_CutScene") as §7"0§).x = this.§'!U§[1] + Math.abs(this.§'!U§[2] - this.§'!U§[1]) / 2;
                     §§goto(addr194);
                  }
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr86);
                  }
                  §§goto(addr220);
               }
            }
            while(true)
            {
               (§2"@§.getItemByName("Button_Menu") as §7"0§).setVisibility(false);
               §§goto(addr231);
            }
         }
         §§goto(addr280);
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            (§2"@§.getItemByName("Button_Menu") as §7"0§).setVisibility(true);
            loop0:
            while(true)
            {
               (§2"@§.getItemByName("Button_Replay") as §7"0§).setVisibility(true);
               loop1:
               while(true)
               {
                  (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
                  do
                  {
                     if(!LevelManager.§8t§())
                     {
                        (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
                        loop3:
                        while(!_loc1_)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc1_)
                              {
                                 (§2"@§.getItemByName("Button_Menu") as §7"0§).x = this.§'!U§[0] + Math.abs(this.§'!U§[1] - this.§'!U§[0]) / 2;
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       if(_loc1_ && this)
                                       {
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr187);
                                 continue;
                              }
                              addr209:
                              addr187:
                              addr192:
                              (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(true);
                              (§2"@§.getItemByName("Button_Menu") as §7"0§).x = this.§'!U§[0];
                              (§2"@§.getItemByName("Button_Replay") as §7"0§).x = this.§'!U§[1];
                           }
                           (§2"@§.getItemByName("Button_NextLevel") as §7"0§).x = this.§'!U§[2];
                           break;
                        }
                        continue;
                     }
                     §§goto(addr192);
                  }
                  while(_loc1_ && this);
                  
               }
            }
         }
         §§goto(addr25);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§-U§ = false;
               loop1:
               while(true)
               {
                  §?l§.pause();
                  loop2:
                  while(true)
                  {
                     this.§;!@§ = new §3"K§(0,0,0,0);
                     loop3:
                     while(true)
                     {
                        §2"@§.movieClip.addChildAt(this.§;!@§,§2"@§.movieClip.numChildren - 1);
                        addr169:
                        while(!_loc1_)
                        {
                        }
                        addr141:
                        continue loop2;
                        while(true)
                        {
                           if(!(_loc2_ || _loc1_))
                           {
                              continue loop3;
                           }
                           while(true)
                           {
                              this.mNewScoreCounter = 0;
                              while(true)
                              {
                                 this.§-!L§ = false;
                                 while(true)
                                 {
                                    §@"M§.§3"C§(this.§=!v§);
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          this.§;!@§.§!!4§(0.7);
                                          continue;
                                       }
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
         }
         while(true)
         {
            if(!LevelManager.§%!8§())
            {
               this.showButtonsNormal();
               §§goto(addr127);
            }
            §§goto(addr132);
         }
      }
      
      protected function get §=!v§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §#!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§4!C§ = false;
         }
         while(true)
         {
            this.setScoreData();
            loop1:
            for(; !_loc2_; if(!(_loc1_ || _loc2_))
            {
               continue;
            },this.§!r§.addEventListener(TimerEvent.TIMER,this.§7!9§),while(_loc1_)
            {
               this.§!r§.start();
               if(_loc1_ || this)
               {
                  return;
               }
            },§§goto(addr65))
            {
               this.§!r§ = new Timer(500);
               loop2:
               while(true)
               {
                  this.§[2§ = 0;
                  addr65:
                  while(true)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      protected function §2!X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§ T§) != 100)
            {
               (§2"@§.getItemByName("MovieClip_ResultMEFeather") as §^n§).mClip.gotoAndStop("Off");
               if(!_loc1_)
               {
                  addr62:
               }
               else
               {
                  addr80:
               }
               return;
            }
            if(_loc2_)
            {
               (§2"@§.getItemByName("MovieClip_ResultMEFeather") as §^n§).mClip.gotoAndStop("On");
            }
            §§goto(addr80);
         }
         §§goto(addr62);
      }
      
      protected function §;;§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            if(!this.§1!u§)
            {
               §2"@§.setText("Best " + param2.toString(),"TextField_BestScore");
               loop0:
               while(!_loc5_)
               {
                  this.§=!G§ = LevelManager.§=S§(LevelManager.§ T§,param2);
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  if(_loc4_ || param1)
                  {
                     §§push(this.§=!G§);
                     if(!(_loc5_ && _loc3_))
                     {
                        var _loc3_:* = §§pop();
                        if(!(_loc5_ && param2))
                        {
                           §§push(1);
                           if(_loc4_)
                           {
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(0);
                                       if(_loc4_ || param1)
                                       {
                                          addr257:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).§!!a§("OneStar");
                                                if(!(_loc5_ && this))
                                                {
                                                   addr45:
                                                   break;
                                                }
                                                break;
                                             case 1:
                                                (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).§!!a§("TwoStar");
                                                break;
                                                addr55:
                                             case 2:
                                                (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).§!!a§("ThreeStar");
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr45);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr55);
                                                   }
                                                }
                                          }
                                          return;
                                          addr256:
                                       }
                                    }
                                    else
                                    {
                                       addr219:
                                       §§push(1);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr256);
                                       }
                                       else
                                       {
                                          addr241:
                                          §§push(_loc3_);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(2);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(_loc3_);
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                §§goto(addr219);
                                             }
                                             addr243:
                                             §§push(2);
                                             if(_loc4_ || param2)
                                             {
                                             }
                                             §§goto(addr256);
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§goto(addr241);
                                             }
                                          }
                                          §§goto(addr256);
                                       }
                                    }
                                 }
                                 §§goto(addr256);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr243);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           §§goto(addr256);
                        }
                        §§goto(addr243);
                     }
                     §§goto(addr257);
                     addr96:
                  }
                  else
                  {
                     while(true)
                     {
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           break;
                        }
                        addr146:
                        while(true)
                        {
                           §§push(param1);
                           if(!(_loc5_ && param2))
                           {
                              §§push(int(§§pop()));
                           }
                           param2 = §§pop();
                           break loop0;
                        }
                     }
                  }
                  §§goto(addr257);
               }
               while(true)
               {
                  AngryBirdsFP11.sUserProgress.§!y§(LevelManager.§ T§,param2);
                  §§goto(addr142);
               }
            }
            §§goto(addr146);
         }
         §§goto(addr96);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§ T§));
         if(!(_loc7_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§?l§.§5-§.getScore());
         if(_loc8_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            this.§1!u§ = _loc2_ > _loc1_;
         }
         while(true)
         {
            while(true)
            {
               this.§;;§(_loc2_,_loc1_);
               do
               {
                  this.§2!X§();
               }
               while(!(_loc8_ || _loc1_));
               
               if(!_loc8_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(§?l§.§5-§.getEagleScore());
               if(_loc8_ || this)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§ T§));
               if(_loc8_)
               {
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:*;
               if(_loc5_ = _loc3_ > _loc4_)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc3_);
                     if(!(_loc7_ && this))
                     {
                        §§push(int(§§pop()));
                        if(!(_loc7_ && _loc3_))
                        {
                           _loc4_ = §§pop();
                           if(!_loc7_)
                           {
                              §§push(AngryBirdsFP11.sUserProgress);
                              if(!_loc7_)
                              {
                                 §§push(LevelManager.§ T§);
                                 if(_loc8_ || _loc2_)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc7_ && this))
                                    {
                                       §§pop().§3!Z§(§§pop(),§§pop());
                                       addr156:
                                       §§push(AngryBirdsFP11.sUserProgress);
                                       §§push(LevelManager.§ T§);
                                       §§push(_loc2_);
                                    }
                                    §§push(§§pop().getStarsForLevel(§§pop(),§§pop()));
                                    if(!_loc7_)
                                    {
                                       addr160:
                                       §§push(int(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(_loc8_)
                                    {
                                       (§2"@§.getItemByName("MovieClip_NewHighScoreBadge") as §^n§).setVisibility(false);
                                       while(true)
                                       {
                                          (§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).mClip.gotoAndStop("UnLit");
                                          while(true)
                                          {
                                             (§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).mClip.gotoAndStop("UnLit");
                                             §§goto(addr204);
                                          }
                                       }
                                    }
                                    addr204:
                                    while(true)
                                    {
                                       (§2"@§.getItemByName("MovieClip_StarRight") as §^n§).mClip.gotoAndStop("UnLit");
                                       if(_loc8_)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    addr194:
                                    return;
                                 }
                              }
                           }
                           §§goto(addr156);
                        }
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr156);
            }
         }
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§1!u§)
            {
               if(!_loc1_)
               {
                  §@"M§.§3"C§("Hiscore_Badge",§+"1§);
               }
               §2"@§.setText("New Highscore!","TextField_NewHighScore");
               (§2"@§.getItemByName("TextField_NewHighScore") as §4"9§).setVisibility(true);
               loop1:
               while(true)
               {
                  (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).setVisibility(false);
                  addr96:
                  while(true)
                  {
                     if(!(_loc1_ && this))
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               this.§2r§();
               addr138:
               addr128:
               addr113:
            }
            else
            {
               (§2"@§.getItemByName("TextField_BestScore") as §4"9§).setVisibility(true);
               for(; _loc2_ || this; (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).setVisibility(true),if(!_loc2_)
               {
                  continue;
               },if(_loc2_)
               {
                  §§goto(addr25);
               }
               else
               {
                  §§goto(addr128);
               })
               {
                  if(!(_loc1_ && this))
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        continue;
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr96);
               }
            }
            addr25:
            return;
         }
         §§goto(addr113);
      }
      
      protected function §2r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§@!8§ = 0;
            while(true)
            {
               this.§&!a§ = 0;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§0!U§ = §^"A§;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr47);
      }
      
      private function § "4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x = (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x - this.§@!8§;
            loop0:
            while(true)
            {
               (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y = (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y - this.§&!a§;
               loop1:
               while(true)
               {
                  if(this.§0!U§ > 0)
                  {
                     if(!_loc3_)
                     {
                        §§push(this);
                        §§push(Math.random() - 0.5);
                        if(_loc2_ || param1)
                        {
                           §§push(this.§0!U§);
                           if(!(_loc3_ && param1))
                           {
                              §§push(§§pop() / §^"A§);
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc3_)
                           {
                              §§push(§§pop() * 20);
                           }
                        }
                        §§pop().§@!8§ = §§pop();
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(Math.random() - 0.5);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(this.§0!U§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() / §^"A§);
                           }
                           §§push(§§pop() * §§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() * 20);
                           }
                        }
                        §§pop().§&!a§ = §§pop();
                        while(true)
                        {
                           (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x = (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x + this.§@!8§;
                           loop4:
                           while(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y = (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y + this.§&!a§;
                                 loop5:
                                 do
                                 {
                                    do
                                    {
                                       §§push(this);
                                       §§push(this.§0!U§);
                                       if(_loc2_ || param1)
                                       {
                                          §§push(param1);
                                          if(_loc2_ || param1)
                                          {
                                             §§push(§§pop() / 10);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§0!U§ = §§pop();
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§@!8§ = 0;
                                                      §§goto(addr93);
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             addr93:
                                             while(true)
                                             {
                                                this.§&!a§ = 0;
                                                continue loop7;
                                             }
                                          }
                                          continue;
                                       }
                                       if(_loc2_ || _loc3_)
                                       {
                                          continue loop5;
                                       }
                                    }
                                    while(!_loc3_);
                                    
                                    continue loop1;
                                 }
                                 while(!(_loc2_ || this));
                                 
                                 return;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  else
                  {
                     this.§0!U§ = -1;
                  }
                  while(true)
                  {
                     this.§^!q§();
                     §§goto(addr97);
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      protected function §^!q§() : void
      {
      }
      
      private function §7!9§(param1:TimerEvent) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc4_:Number = LevelManager.§ "§(LevelManager.§ T§).§8"G§;
         var _loc5_:Number = LevelManager.§ "§(LevelManager.§ T§).§;!?§;
         if(!_loc12_)
         {
            if((§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§7"U§);
               loop0:
               for(; _loc13_; §§push(this.§7"U§),if(_loc12_ && param1)
               {
                  continue;
               },§§goto(addr497))
               {
                  §§push(§§pop().getValue());
                  while(true)
                  {
                     §§push(_loc5_);
                     addr683:
                     addr835:
                     addr497:
                     while(!_loc12_)
                     {
                        §§push(§§pop() >= §§pop());
                        loop3:
                        for(; !_loc12_; while(true)
                        {
                           if(!(_loc12_ && this))
                           {
                              §§pop();
                              if(_loc13_)
                              {
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    §§goto(addr472);
                                    §§push((§2"@§.getItemByName("MovieClip_StarRight") as §^n§).mClip.currentLabel == "UnLit");
                                 }
                                 §§goto(addr605);
                              }
                              break;
                           }
                           continue loop3;
                        },§§goto(addr887))
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
                                    addr691:
                                    while(true)
                                    {
                                       §§push((§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).mClip.currentLabel == "UnLit");
                                    }
                                 }
                                 addr690:
                              }
                              while(true)
                              {
                                 loop8:
                                 while(!§§pop())
                                 {
                                    continue loop0;
                                    addr233:
                                    if(_loc12_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc13_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop17:
                                       while(!_loc12_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc12_)
                                          {
                                             continue loop4;
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                continue loop3;
                                             }
                                             addr479:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   addr481:
                                                   this.§-U§ = true;
                                                }
                                                else
                                                {
                                                   §§push(this.§-!L§);
                                                   while(true)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         addr289:
                                                         if(_loc13_)
                                                         {
                                                            if(!(_loc12_ && param1))
                                                            {
                                                               addr298:
                                                               this.§-!L§ = true;
                                                               addr301:
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     §§goto(addr887);
                                                                  }
                                                                  addr737:
                                                                  _loc3_ = Number((§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).y + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y);
                                                                  addr755:
                                                                  §§goto(addr887);
                                                               }
                                                               this.§3Z§ = new §-!x§(AngryBirdsFP11.§'!m§,AngryBirdsFP11.§?s§,_loc2_,_loc3_,§-!x§.§,Q§,§-!x§.§!!U§,_loc7_);
                                                               §2"@§.addChild(this.§3Z§);
                                                               this.§%q§.push(this.§3Z§);
                                                               addr887:
                                                               var _loc10_:*;
                                                               §§push((_loc10_ = this).§[2§);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               if(_loc13_)
                                                               {
                                                                  _loc10_.§[2§ = _loc11_;
                                                               }
                                                               return;
                                                               addr704:
                                                               addr698:
                                                               addr721:
                                                            }
                                                            else
                                                            {
                                                               addr666:
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  addr621:
                                                                  §§push(Number((§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).x + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x));
                                                                  if(_loc13_ || _loc3_)
                                                                  {
                                                                     if(_loc13_ || param1)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr636:
                                                                        if(!_loc12_)
                                                                        {
                                                                           addr602:
                                                                           §§push(Number((§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).y + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y));
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§goto(addr621);
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                           this.§3Z§ = new §-!x§(AngryBirdsFP11.§'!m§,AngryBirdsFP11.§?s§,_loc2_,_loc3_,§-!x§.§8!;§,§-!x§.§!!U§,_loc8_);
                                                                           §2"@§.addChild(this.§3Z§);
                                                                           this.§%q§.push(this.§3Z§);
                                                                           if(!(_loc12_ && _loc3_))
                                                                           {
                                                                              §§goto(addr887);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr855:
                                                                              §§push(this.§7"U§);
                                                                              break loop0;
                                                                              addr855:
                                                                           }
                                                                           addr569:
                                                                           addr586:
                                                                           addr605:
                                                                        }
                                                                        break loop8;
                                                                     }
                                                                     addr809:
                                                                     if(_loc13_ || _loc2_)
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc12_)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr824:
                                                                                 addr823:
                                                                                 §§push(Number(1));
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(2);
                                                                                       addr837:
                                                                                       while(true)
                                                                                       {
                                                                                          addr838:
                                                                                          §§push(Number(§§pop() * §§pop()));
                                                                                          addr839:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             if(_loc13_ || _loc3_)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr887);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr836:
                                                                                 }
                                                                                 _loc6_ = §§pop();
                                                                                 addr790:
                                                                                 this.§-I§ = §0W§.§&"5§.§]!r§(this,{"mNewScoreCounter":this.§7"U§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                                 addr784:
                                                                                 this.§-I§.onComplete = this.§#!h§;
                                                                                 addr827:
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(this.§-I§);
                                                                                    if(!(_loc12_ && _loc3_))
                                                                                    {
                                                                                       §§pop().play();
                                                                                       addr773:
                                                                                       if(_loc12_ && _loc3_)
                                                                                       {
                                                                                          §§goto(addr827);
                                                                                       }
                                                                                       §§push(this.setStarLeftLit());
                                                                                       break loop17;
                                                                                    }
                                                                                    §§goto(addr784);
                                                                                 }
                                                                                 addr806:
                                                                                 §§goto(addr806);
                                                                              }
                                                                              §§goto(addr887);
                                                                           }
                                                                           §§goto(addr790);
                                                                        }
                                                                        §§goto(addr837);
                                                                     }
                                                                     §§goto(addr839);
                                                                  }
                                                                  addr754:
                                                                  _loc2_ = §§pop();
                                                                  §§goto(addr755);
                                                               }
                                                               §§goto(addr790);
                                                            }
                                                            §§goto(addr755);
                                                         }
                                                         else
                                                         {
                                                            this.§%q§.push(this.§3Z§);
                                                            addr323:
                                                            addr317:
                                                         }
                                                         §§goto(addr887);
                                                      }
                                                      else
                                                      {
                                                         this.§!r§.stop();
                                                         while(!(_loc12_ && param1))
                                                         {
                                                            §§push(this.§1!u§);
                                                            while(!_loc12_)
                                                            {
                                                               §§goto(addr233);
                                                            }
                                                            addr452:
                                                            if(!(_loc12_ && _loc2_))
                                                            {
                                                               addr460:
                                                               _loc9_ = §§pop();
                                                               addr423:
                                                               _loc2_ = Number((§2"@§.getItemByName("MovieClip_StarRight") as §^n§).x + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x);
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  if(!(_loc12_ && _loc2_))
                                                                  {
                                                                     §§push(Number((§2"@§.getItemByName("MovieClip_StarRight") as §^n§).y + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y));
                                                                     if(!(_loc13_ || _loc2_))
                                                                     {
                                                                        §§goto(addr423);
                                                                     }
                                                                     if(!_loc12_)
                                                                     {
                                                                        if(_loc13_ || _loc3_)
                                                                        {
                                                                           if(_loc13_ || _loc3_)
                                                                           {
                                                                              if(!(_loc12_ && _loc3_))
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       this.§3Z§ = new §-!x§(AngryBirdsFP11.§'!m§,AngryBirdsFP11.§?s§,_loc2_,_loc3_,§-!x§.§3#§,§-!x§.§!!U§,_loc9_);
                                                                                       addr340:
                                                                                       if(_loc13_ || _loc3_)
                                                                                       {
                                                                                          if(!(_loc12_ && this))
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                §2"@§.addChild(this.§3Z§);
                                                                                                §§goto(addr323);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr754);
                                                                                                §§push(Number((§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).x + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x));
                                                                                                addr761:
                                                                                             }
                                                                                             §§goto(addr887);
                                                                                          }
                                                                                          §§goto(addr704);
                                                                                       }
                                                                                       §§goto(addr698);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr773);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr838);
                                                                              }
                                                                              §§goto(addr887);
                                                                           }
                                                                           §§goto(addr824);
                                                                        }
                                                                        §§goto(addr737);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr602);
                                                                     }
                                                                  }
                                                                  this.§!r§.delay = 1000;
                                                                  §§push(this.§7"U§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().assign(§?l§.§5-§.getScore());
                                                                     §§goto(addr855);
                                                                  }
                                                                  addr886:
                                                                  addr861:
                                                                  addr851:
                                                               }
                                                               §§goto(addr602);
                                                               addr461:
                                                            }
                                                            else
                                                            {
                                                               while(_loc13_ || this)
                                                               {
                                                                  §§push(§§pop());
                                                                  continue loop10;
                                                                  §§goto(addr452);
                                                               }
                                                               addr665:
                                                               _loc8_ = §§pop();
                                                               addr664:
                                                               §§goto(addr666);
                                                               addr523:
                                                            }
                                                            §§goto(addr824);
                                                         }
                                                         §§goto(addr452);
                                                         §§push(this.setStarRightLit());
                                                         addr484:
                                                         addr273:
                                                      }
                                                      §§goto(addr666);
                                                   }
                                                   addr286:
                                                }
                                                §§goto(addr484);
                                             }
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                       break loop3;
                                       addr243:
                                    }
                                    §§goto(addr690);
                                 }
                                 if(!_loc12_)
                                 {
                                    if(_loc13_)
                                    {
                                       addr881:
                                       if(_loc13_ || _loc3_)
                                       {
                                          §§goto(addr664);
                                          §§push(this.setStarCenterLit());
                                       }
                                       §@"M§.§3"C§("Hiscore_Count",§>!V§,100);
                                       §§goto(addr886);
                                    }
                                    §§goto(addr861);
                                 }
                                 §§goto(addr721);
                              }
                           }
                        }
                        _loc7_ = §§pop();
                        §§goto(addr761);
                     }
                     §§goto(addr836);
                     §§push((§§pop() / §§pop()).getValue());
                     if(_loc12_ && this)
                     {
                        continue;
                     }
                     if(!_loc12_)
                     {
                        if(!(_loc12_ && _loc3_))
                        {
                           §§push(_loc4_);
                           if(_loc13_ || param1)
                           {
                              §§goto(addr523);
                              §§push(§§pop() >= §§pop());
                           }
                           else
                           {
                              §§goto(addr683);
                           }
                           §§goto(addr686);
                        }
                        addr834:
                        §§goto(addr835);
                        §§push(_loc4_);
                     }
                     §§goto(addr823);
                  }
               }
               while(!_loc13_)
               {
                  §§goto(addr851);
                  §§goto(addr855);
               }
               §§goto(addr834);
               §§push(§§pop().getValue());
            }
            §§goto(addr881);
         }
         §§goto(addr298);
      }
      
      protected function setStarLeftLit() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@"M§.§3"C§("Hiscore_Star_Splash1",§+"1§);
         }
         do
         {
            (§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).mClip.gotoAndStop("Lit");
         }
         while(!_loc2_);
         
         return false;
      }
      
      protected function setStarCenterLit() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@"M§.§3"C§("Hiscore_Star_Splash2",§+"1§);
            do
            {
               (§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).mClip.gotoAndStop("Lit");
            }
            while(!(_loc2_ || _loc1_));
            
         }
         return false;
      }
      
      protected function setStarRightLit() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §@"M§.§3"C§("Hiscore_Star_Splash3",§+"1§);
            do
            {
               (§2"@§.getItemByName("MovieClip_StarRight") as §^n§).mClip.gotoAndStop("Lit");
            }
            while(_loc2_ && _loc1_);
            
         }
         return false;
      }
      
      private function §#!h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@"M§.§]!n§(§>!V§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§-!x§ = null;
         §§push(super.run(param1));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            §§push(_loc2_);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §2"@§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                     do
                     {
                        if(!(_loc7_ && this))
                        {
                           §2"@§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                           if(_loc6_)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 if(true)
                                 {
                                    §§push(0);
                                 }
                                 continue loop0;
                                 break;
                              }
                              continue loop0;
                           }
                           continue;
                        }
                        addr73:
                        §§push(_loc2_);
                     }
                     while(!(_loc7_ && _loc3_));
                     
                     for each(_loc3_ in this.§%q§)
                     {
                        if(!(_loc7_ && this))
                        {
                           _loc3_.update(param1);
                        }
                     }
                     if(!_loc7_)
                     {
                        if(this.§0!U§ > -1)
                        {
                           while(true)
                           {
                              this.§ "4§(param1);
                              addr183:
                              while(true)
                              {
                              }
                              addr165:
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§goto(addr172);
                              }
                           }
                        }
                        while(true)
                        {
                           if(mNextState.length <= 0)
                           {
                              return §+d§.STATE_STATUS_RUNNING;
                           }
                           if(_loc7_)
                           {
                              continue;
                           }
                           §§goto(addr165);
                        }
                     }
                     addr172:
                     §?l§.§'h§.clearLevel();
                     return §+d§.STATE_STATUS_COMPLETED;
                  }
               }
               §§goto(addr73);
            }
            return §§pop();
         }
         §§goto(addr73);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            while(true)
            {
               this.§?!z§();
               loop1:
               while(true)
               {
                  this.§0!U§ = 0;
                  loop2:
                  while(true)
                  {
                     this.mNewScoreCounter = 0;
                     loop3:
                     while(true)
                     {
                        §§push(this.§-I§);
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 this.§-I§ = null;
                                 addr178:
                                 while(true)
                                 {
                                 }
                                 addr41:
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§goto(addr19);
                                 }
                              }
                              addr214:
                           }
                           loop6:
                           while(true)
                           {
                              §§push(this.§+1§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(!§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §@"M§.§]!n§(§>!V§);
                                       loop9:
                                       while(!_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop2;
                                          }
                                          this.§-!$§(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          loop10:
                                          while(true)
                                          {
                                             §2"@§.setText("0","TextField_LevelEndScore");
                                             loop11:
                                             while(true)
                                             {
                                                §2"@§.setText("0","TextField_LevelEndScoreEffects");
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(this.§;!@§);
                                                   loop13:
                                                   while(§§pop())
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr110:
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(!(_loc1_ || _loc2_))
                                                         {
                                                            while(_loc1_)
                                                            {
                                                               §§push(this.§+1§);
                                                               while(true)
                                                               {
                                                                  §§pop().stop();
                                                                  break loop9;
                                                               }
                                                               continue loop17;
                                                            }
                                                            continue loop6;
                                                            addr161:
                                                         }
                                                         while(true)
                                                         {
                                                            addr49:
                                                            while(true)
                                                            {
                                                               §§push(this.§;!@§);
                                                               if(_loc1_)
                                                               {
                                                                  §§pop().clean();
                                                                  while(true)
                                                                  {
                                                                     if(_loc1_ || _loc1_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                   addr19:
                                                   return;
                                                }
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr165);
                           }
                        }
                        else
                        {
                           addr213:
                           §§pop().stop();
                        }
                        §§goto(addr214);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      protected function §-!$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§2"@§.getItemByName("Button_Menu") as §7"0§).setComponentVisualState(param1);
            do
            {
               (§2"@§.getItemByName("Button_Replay") as §7"0§).setComponentVisualState(param1);
               do
               {
                  (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setComponentVisualState(param1);
                  do
                  {
                     (§2"@§.getItemByName("Button_CutScene") as §7"0§).setComponentVisualState(param1);
                  }
                  while(!(_loc3_ || _loc3_));
                  
               }
               while(_loc2_ && _loc3_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      private function §?!z§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§-!x§ = null;
         if(!(_loc5_ && this))
         {
            if(this.§!r§)
            {
               if(_loc4_)
               {
                  addr36:
                  this.§!r§.stop();
               }
               try
               {
                  this.§!r§.removeEventListener(TimerEvent.TIMER,this.§7!9§);
                  if(_loc5_)
                  {
                  }
               }
               catch(e:Error)
               {
               }
               return;
               addr148:
            }
            var _loc2_:int = 0;
            if(!_loc5_)
            {
               var _loc3_:* = this.§%q§;
               if(!_loc5_)
               {
                  loop0:
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     loop1:
                     while(true)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(§2"@§.contains(splash))
                              {
                                 if(_loc4_)
                                 {
                                    while(true)
                                    {
                                       §2"@§.removeChild(splash);
                                    }
                                    addr103:
                                 }
                                 while(true)
                                 {
                                 }
                                 addr107:
                              }
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§pop().§§slot[1].clean();
                                 if(_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       break loop3;
                                    }
                                    if(false)
                                    {
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr107);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  addr130:
                  if(!(_loc5_ && _loc1_))
                  {
                     this.§%q§ = new Vector.<§-!x§>();
                  }
                  do
                  {
                     this.§,!d§();
                  }
                  while(_loc5_);
                  
                  §§goto(addr148);
               }
               §§goto(addr103);
            }
            §§goto(addr130);
         }
         §§goto(addr36);
      }
      
      protected function §,!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§2"@§.getItemByName("TextField_BestScore") as §4"9§).setVisibility(false);
            while(true)
            {
               (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).setVisibility(false);
               while(_loc1_)
               {
                  (§2"@§.getItemByName("TextField_NewHighScore") as §4"9§).setVisibility(false);
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr58:
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      protected function loadNextLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!v§.§>"@§();
            do
            {
               mNextState = this.getCutSceneState();
            }
            while(!_loc1_);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
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
               §§push("NEXT_LEVEL");
               if(_loc7_ || param1)
               {
                  §§push(_loc5_);
                  if(_loc7_ || param3)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc7_)
                        {
                           §§push(0);
                           if(_loc7_ || param1)
                           {
                           }
                           §§goto(addr301);
                        }
                        else
                        {
                           §§goto(addr225);
                        }
                     }
                     else
                     {
                        §§push("REPLAY");
                        if(_loc7_ || param1)
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && param2))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_ || this)
                                 {
                                    addr225:
                                    §§push(1);
                                    if(!_loc7_)
                                    {
                                       addr296:
                                    }
                                    §§goto(addr301);
                                 }
                                 else
                                 {
                                    addr281:
                                    §§push(3);
                                    if(!_loc7_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("WATCH_REPLAY");
                                 if(_loc7_ || param2)
                                 {
                                    addr237:
                                    §§push(_loc5_);
                                    if(!_loc6_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(2);
                                             if(_loc7_ || param2)
                                             {
                                                §§goto(addr301);
                                             }
                                             else
                                             {
                                                §§goto(addr296);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr281);
                                          }
                                          §§goto(addr301);
                                       }
                                       else
                                       {
                                          §§push("MENU");
                                          if(!_loc6_)
                                          {
                                             §§push(_loc5_);
                                             if(_loc6_ && param3)
                                             {
                                             }
                                             addr287:
                                             if(§§pop() === §§pop())
                                             {
                                                addr288:
                                                §§push(4);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr301);
                                             }
                                             else
                                             {
                                                addr301:
                                                loop5:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      this.loadNextLevel();
                                                      if(!(_loc6_ && this))
                                                      {
                                                         break;
                                                      }
                                                      break;
                                                   case 1:
                                                      §-!v§.§^!$§();
                                                      mNextState = this.getStateLevelLoadState();
                                                      break;
                                                      addr138:
                                                      addr132:
                                                   case 2:
                                                      §-!v§.§^!$§();
                                                      mNextState = this.getStateLevelLoadState();
                                                      while(true)
                                                      {
                                                         §§push(§?l§.§'h§);
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§push(§§pop().§=!O§());
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc7_ || this))
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            §§push(_loc4_ = §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr112:
                                                            §§pop().§;!;§(_loc4_);
                                                         }
                                                         break loop5;
                                                      }
                                                      continue;
                                                      addr126:
                                                      addr120:
                                                   case 3:
                                                      §@"M§.§3!s§();
                                                      while(true)
                                                      {
                                                         addr52:
                                                         while(true)
                                                         {
                                                            mNextState = this.getMenuButtonTargetState();
                                                            if(_loc7_ || param2)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  §§goto(addr103);
                                                               }
                                                               §§goto(addr112);
                                                            }
                                                            break loop5;
                                                         }
                                                      }
                                                      break;
                                                   case 4:
                                                      AngryBirdsFP11.§>m§.§=-§();
                                                      if(_loc7_ || param1)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr52);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr138);
                                                               }
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr126);
                                                         }
                                                      }
                                                }
                                                return;
                                                §§push(5);
                                             }
                                             §§goto(addr301);
                                          }
                                          addr286:
                                          §§goto(addr287);
                                          §§push(_loc5_);
                                       }
                                       §§goto(addr301);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          §§goto(addr281);
                                       }
                                       else
                                       {
                                          §§goto(addr288);
                                       }
                                    }
                                    else
                                    {
                                       §§push("FULLSCREEN_BUTTON");
                                    }
                                    §§goto(addr288);
                                 }
                                 §§goto(addr286);
                              }
                           }
                           §§goto(addr287);
                        }
                        §§goto(addr237);
                     }
                     §§goto(addr301);
                  }
                  §§goto(addr287);
               }
               §§goto(addr237);
            }
            §§goto(addr288);
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §-!v§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §9"@§.STATE_NAME;
      }
   }
}
