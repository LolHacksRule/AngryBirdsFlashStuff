package §;!§
{
   import §"n§.§<!e§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§+!@§;
   import §0"$§.§6n§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§+!D§;
   import §<!F§.§,!e§;
   import §<!F§.§?!`§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §>!X§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelEndState";
      
      public static const §;`§:Number = 30;
      
      protected static const §>!x§:String = "ScoreLoopCountChannel";
      
      protected static const §#x§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §>!X§)
         {
            §-!q§ = "LevelEndState";
            while(true)
            {
               §;`§ = 30;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §>!x§ = "ScoreLoopCountChannel";
                     do
                     {
                        §#x§ = "EndScreenEffectChannel";
                     }
                     while(!(_loc2_ || §>!X§));
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      private var §"f§:§0]§;
      
      private var §;!]§:Number;
      
      private var §%!B§:Number = 0.0;
      
      private var §-O§:Number = 0.0;
      
      private var § u§:Boolean = false;
      
      private var §9X§:Timer;
      
      private var §7!k§:§,!e§;
      
      protected var §'2§:Array;
      
      protected var §3=§:§?!`§;
      
      protected var §>8§:Vector.<§?!`§>;
      
      public var mNewScoreCounter:int;
      
      private var §`S§:int;
      
      private var §6!Z§:Boolean;
      
      protected var §7!"§:Boolean;
      
      private var §!"%§:§<!e§;
      
      protected var §?R§:Boolean;
      
      private var §#!O§:§0]§;
      
      protected var §+b§:Boolean;
      
      protected var §?w§:int;
      
      public function §>!X§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.§'2§ = [];
            while(true)
            {
               this.§!"%§ = new §<!e§();
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            super(param1,param3,param4,param2);
            if(_loc6_)
            {
               if(_loc6_ || param3)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §?P§ = new §2W§(this);
               while(!_loc1_)
               {
                  loop3:
                  while(_loc2_ || _loc2_)
                  {
                     this.§+!q§();
                     loop4:
                     while(true)
                     {
                        this.§>8§ = new Vector.<§?!`§>();
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §'!c§.§8G§(§>!x§,1,1);
                              continue;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §?P§.init(this.§`!K§());
            §§goto(addr83);
         }
      }
      
      protected function §+!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§'2§);
            while(true)
            {
               §§pop().push((§?P§.getItemByName("Button_Menu") as §;§).x);
            }
            addr101:
         }
         loop1:
         while(true)
         {
            §§push(this.§'2§);
            loop2:
            while(true)
            {
               §§pop().push((§?P§.getItemByName("Button_Replay") as §;§).x);
               while(true)
               {
                  §§push(this.§'2§);
                  loop4:
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(!_loc2_)
                        {
                           break;
                           addr70:
                        }
                        §§pop().push((§?P§.getItemByName("Button_NextLevel") as §;§).x);
                        while(_loc2_ || _loc2_)
                        {
                           continue loop4;
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
                  §§goto(addr101);
               }
               return;
            }
         }
      }
      
      protected function §`!K§() : XML
      {
         return §#"0§.§+#§.Views.View_LevelEnd[0];
      }
      
      protected function § !@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§6!!§.singleton.§<!S§.userProgress.§<W§(§&" §.currentLevel))
            {
               (§?P§.getItemByName("Button_Menu") as §;§).setVisibility(true);
               loop0:
               while(true)
               {
                  (§?P§.getItemByName("Button_Replay") as §;§).setVisibility(true);
                  addr127:
                  while(!(_loc1_ && _loc1_))
                  {
                     (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
                     continue loop0;
                  }
                  addr181:
                  addr20:
                  if(_loc1_)
                  {
                     loop7:
                     while(true)
                     {
                        (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
                        do
                        {
                           (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(true);
                           do
                           {
                              (§?P§.getItemByName("Button_Replay") as §;§).x = this.§'2§[0] + Math.abs(this.§'2§[1] - this.§'2§[0]) / 2;
                           }
                           while(!(_loc2_ || this));
                           
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        if(_loc2_)
                        {
                           (§?P§.getItemByName("Button_CutScene") as §;§).x = this.§'2§[1] + Math.abs(this.§'2§[2] - this.§'2§[1]) / 2;
                           continue;
                        }
                        addr278:
                        while(true)
                        {
                           (§?P§.getItemByName("Button_Replay") as §;§).setVisibility(true);
                           continue loop7;
                        }
                     }
                     addr252:
                  }
                  return;
               }
            }
            (§?P§.getItemByName("Button_Menu") as §;§).setVisibility(false);
            §§goto(addr278);
         }
         §§goto(addr252);
      }
      
      protected function §8N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§?P§.getItemByName("Button_Menu") as §;§).setVisibility(true);
         }
         loop0:
         while(true)
         {
            (§?P§.getItemByName("Button_Replay") as §;§).setVisibility(true);
            loop1:
            while(true)
            {
               (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(false);
               loop2:
               do
               {
                  if(!§&" §.getNextLevelId())
                  {
                     (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
                     loop3:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        addr77:
                        while(true)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              if(_loc1_ && this)
                              {
                                 break;
                              }
                              if(_loc1_ && _loc2_)
                              {
                                 break loop3;
                              }
                              continue loop1;
                           }
                           continue loop3;
                           addr115:
                           (§?P§.getItemByName("Button_Replay") as §;§).x = this.§'2§[1] + Math.abs(this.§'2§[2] - this.§'2§[1]) / 2;
                           if(_loc2_)
                           {
                              §§goto(addr20);
                           }
                        }
                        while(_loc1_)
                        {
                           loop6:
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 (§?P§.getItemByName("Button_Replay") as §;§).x = this.§'2§[1];
                                 continue loop6;
                              }
                           }
                           (§?P§.getItemByName("Button_NextLevel") as §;§).x = this.§'2§[2];
                        }
                        continue loop2;
                     }
                     (§?P§.getItemByName("Button_Menu") as §;§).x = this.§'2§[0];
                     §§goto(addr182);
                     addr194:
                  }
                  (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(true);
                  §§goto(addr194);
               }
               while(_loc1_ && this);
               
               addr20:
               return;
            }
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§+b§ = false;
               loop1:
               while(true)
               {
                  §&!"§.pause();
                  while(true)
                  {
                     this.§7!k§ = new §,!e§(0,0,0,0);
                     loop3:
                     while(!(_loc3_ && _loc3_))
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §?P§.movieClip.addChildAt(this.§7!k§,§?P§.movieClip.numChildren - 1);
                           loop5:
                           for(; _loc2_; while(!(_loc3_ && param1))
                           {
                              this.§6!Z§ = false;
                              §§goto(addr78);
                           })
                           {
                              if(!§&" §.isCutSceneNext())
                              {
                                 this.§8N§();
                                 while(true)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       while(true)
                                       {
                                          this.§ !@§();
                                          addr122:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr120:
                                    }
                                    while(true)
                                    {
                                       this.mNewScoreCounter = 0;
                                       continue loop5;
                                       §§goto(addr122);
                                    }
                                    addr78:
                                    while(!_loc3_)
                                    {
                                       §'!c§.§3!f§("LevelCompletedTheme1");
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr120);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr154);
      }
      
      private function §7!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7!"§ = false;
            loop0:
            while(true)
            {
               this.§6!3§();
               loop1:
               while(true)
               {
                  this.§9X§ = new Timer(500);
                  loop2:
                  while(true)
                  {
                     this.§`S§ = 0;
                     loop3:
                     while(!_loc2_)
                     {
                        this.§9X§.addEventListener(TimerEvent.TIMER,this.§`%§);
                        loop4:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              this.§9X§.start();
                              if(_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      protected function §[m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(§6!!§.singleton.§<!S§.userProgress.§2p§(§&" §.currentLevel) == 100)
            {
               addr84:
               (§?P§.getItemByName("MovieClip_ResultMEFeather") as §6n§).mClip.gotoAndStop("On");
            }
            else
            {
               (§?P§.getItemByName("MovieClip_ResultMEFeather") as §6n§).mClip.gotoAndStop("Off");
               if(_loc2_ || this)
               {
                  if(_loc1_ && this)
                  {
                     §§goto(addr84);
                  }
                  else
                  {
                     addr64:
                  }
                  §§goto(addr25);
               }
            }
            addr25:
            return;
         }
         §§goto(addr64);
      }
      
      protected function §;4§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!this.§?R§)
            {
               §?P§.setText("Best " + param2.toString(),"TextField_BestScore");
               while(!(_loc5_ && param2))
               {
                  if(_loc5_)
                  {
                     loop1:
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           §6!!§.singleton.§<!S§.userProgress.setScoreForLevel(§&" §.currentLevel,param2);
                           continue loop1;
                        }
                     }
                     §?P§.setText("New Highscore!","TextField_BestScore");
                  }
                  else
                  {
                     addr129:
                  }
                  this.§?w§ = §&" §.getNumStarsForLevel(§&" §.currentLevel,param2);
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     §§push(this.§?w§);
                     if(_loc4_ || _loc3_)
                     {
                        var _loc3_:* = §§pop();
                        if(_loc4_ || param1)
                        {
                           §§push(1);
                           if(_loc4_ || param2)
                           {
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(0);
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr196:
                                       §§push(1);
                                       if(!(_loc5_ && param1))
                                       {
                                          addr204:
                                       }
                                    }
                                    addr229:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("OneStar");
                                          if(_loc4_)
                                          {
                                             addr38:
                                             break;
                                          }
                                          break;
                                       case 1:
                                          (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("TwoStar");
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          break;
                                       case 2:
                                          (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("ThreeStar");
                                          if(_loc4_ || this)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr38);
                                          }
                                    }
                                    return;
                                    addr228:
                                 }
                                 else
                                 {
                                    §§push(2);
                                    if(!_loc5_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc4_ || param2)
                                       {
                                          addr193:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                §§goto(addr196);
                                             }
                                             else
                                             {
                                                addr210:
                                                §§push(2);
                                                if(_loc4_)
                                                {
                                                   addr223:
                                                }
                                             }
                                             §§goto(addr228);
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(!_loc5_)
                                             {
                                                §§push(_loc3_);
                                             }
                                             §§goto(addr223);
                                          }
                                       }
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr210);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                       §§goto(addr228);
                                    }
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr210);
                     }
                     §§goto(addr229);
                  }
               }
               §§goto(addr229);
            }
            §§push(param1);
            if(!(_loc5_ && this))
            {
               §§push(int(§§pop()));
            }
            param2 = §§pop();
            §§goto(addr143);
         }
         §§goto(addr129);
      }
      
      protected function §6!3§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§6!!§.singleton.§<!S§.userProgress.getScoreForLevel(§&" §.currentLevel));
         if(_loc8_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§&!"§.controller.getScore(10));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            this.§?R§ = _loc2_ > _loc1_;
            loop0:
            while(true)
            {
               addr56:
               while(true)
               {
                  this.§;4§(_loc2_,_loc1_);
                  while(true)
                  {
                     if(_loc8_)
                     {
                        this.§[m§();
                        if(!(_loc7_ && _loc2_))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr56);
         }
         §§push(§&!"§.controller.getEagleScore());
         if(!(_loc7_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§6!!§.singleton.§<!S§.userProgress.§2p§(§&" §.currentLevel));
         if(!(_loc7_ && _loc2_))
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
               if(_loc8_ || _loc3_)
               {
                  §§push(int(§§pop()));
                  if(!(_loc7_ && this))
                  {
                     addr132:
                     _loc4_ = §§pop();
                     if(!_loc7_)
                     {
                        addr135:
                        §§push(§6!!§.singleton);
                        if(_loc8_)
                        {
                           §§push(§§pop().§<!S§);
                           if(_loc8_ || _loc1_)
                           {
                              §§push(§§pop().userProgress);
                              if(_loc8_)
                              {
                                 §§pop().§!3§(§&" §.currentLevel,_loc4_);
                                 addr157:
                                 §§push(§6!!§.singleton.§<!S§.userProgress);
                              }
                              §§push(§§pop().§9"+§(§&" §.currentLevel,_loc2_));
                              if(!(_loc7_ && _loc3_))
                              {
                                 addr169:
                                 §§push(int(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              if(!(_loc7_ && _loc3_))
                              {
                                 (§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(false);
                                 loop4:
                                 do
                                 {
                                    (§?P§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.gotoAndStop("UnLit");
                                    while(true)
                                    {
                                       (§?P§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.gotoAndStop("UnLit");
                                       while(!(_loc7_ && _loc2_))
                                       {
                                          (§?P§.getItemByName("MovieClip_StarRight") as §6n§).mClip.gotoAndStop("UnLit");
                                          if(!_loc7_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 while(!_loc8_);
                                 
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr169);
               }
               §§goto(addr132);
            }
            §§goto(addr135);
         }
         §§goto(addr157);
      }
      
      protected function §>!4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!this.§?R§)
            {
               (§?P§.getItemByName("TextField_BestScore") as §+!@§).setVisibility(true);
               loop0:
               for(; !(_loc1_ && _loc2_); (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(true),if(!_loc2_)
               {
                  continue;
               },if(_loc2_ || _loc1_)
               {
                  §§goto(addr25);
               }
               else
               {
                  §§goto(addr130);
               })
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     continue;
                  }
                  loop2:
                  while(true)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        while(true)
                        {
                           (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(false);
                           addr96:
                           addr98:
                           while(!_loc2_)
                           {
                           }
                           this.§]!U§();
                           break loop0;
                        }
                        addr114:
                     }
                     else
                     {
                        while(true)
                        {
                           §'!c§.§3!f§("Hiscore_Badge",§#x§);
                        }
                        addr134:
                     }
                     while(true)
                     {
                        §?P§.setText("New Highscore!","TextField_NewHighScore");
                        addr130:
                        while(true)
                        {
                           (§?P§.getItemByName("TextField_NewHighScore") as §+!@§).setVisibility(true);
                           continue loop2;
                        }
                     }
                  }
               }
               while(!_loc2_)
               {
                  §§goto(addr96);
                  §§goto(addr98);
               }
               addr25:
               return;
            }
            §§goto(addr134);
         }
         §§goto(addr114);
      }
      
      protected function §]!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§%!B§ = 0;
            while(true)
            {
               this.§-O§ = 0;
               while(_loc1_)
               {
                  this.§;!]§ = §;`§;
                  if(!_loc2_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §&y§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x = (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x - this.§%!B§;
            while(true)
            {
               (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y = (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y - this.§-O§;
               loop1:
               while(true)
               {
                  if(this.§;!]§ <= 0)
                  {
                     this.§%!B§ = 0;
                     loop2:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           while(true)
                           {
                              this.§-O§ = 0;
                              loop10:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    addr152:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§;!]§);
                                       if(_loc3_)
                                       {
                                          §§push(param1);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() / 10);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§;!]§ = §§pop();
                                       if(!(_loc2_ && param1))
                                       {
                                          continue loop2;
                                       }
                                       continue loop10;
                                    }
                                    while(true)
                                    {
                                    }
                                    addr152:
                                    addr24:
                                 }
                                 else
                                 {
                                    §§goto(addr152);
                                 }
                                 (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x = (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x + this.§%!B§;
                                 addr124:
                                 loop5:
                                 for(; _loc2_; §§goto(addr152))
                                 {
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(Math.random() - 0.5);
                                       if(_loc3_)
                                       {
                                          §§push(this.§;!]§);
                                          if(!(_loc2_ && this))
                                          {
                                             §§push(§§pop() / §;`§);
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() * 20);
                                          }
                                       }
                                       §§pop().§-O§ = §§pop();
                                       continue loop5;
                                    }
                                 }
                                 (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y = (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y + this.§-O§;
                              }
                           }
                           addr76:
                        }
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr24);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this);
                                 §§push(Math.random() - 0.5);
                                 if(_loc3_)
                                 {
                                    §§push(this.§;!]§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() / §;`§);
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc3_ || this)
                                    {
                                       addr179:
                                       §§push(§§pop() * 20);
                                    }
                                    §§pop().§%!B§ = §§pop();
                                    §§goto(addr182);
                                 }
                                 §§goto(addr179);
                              }
                              addr158:
                           }
                           §§goto(addr182);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr158);
               }
            }
         }
         §§goto(addr76);
      }
      
      private function §`%§(param1:TimerEvent) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:* = null;
         var _loc4_:Number = §&" §.getGoldScoreForLevel(§&" §.currentLevel);
         var _loc5_:Number = §&" §.getSilverScoreForLevel(§&" §.currentLevel);
         if(_loc13_ || param1)
         {
            if((§?P§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§!"%§);
               loop0:
               for(; !(_loc12_ && this); §§push(this.§!"%§),if(!(_loc13_ || this))
               {
                  continue;
               },if(_loc13_ || _loc3_)
               {
                  §§goto(addr507);
               },§§goto(addr855))
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
                           addr692:
                           addr515:
                           while(true)
                           {
                              §§push(§§pop());
                              addr693:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr695:
                                       addr751:
                                       loop6:
                                       while(_loc13_ || this)
                                       {
                                          §§push((§?P§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.currentLabel == "UnLit");
                                          while(true)
                                          {
                                             addr650:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop0;
                                                }
                                                _loc8_ = this.§'"#§();
                                                if(!(_loc12_ && this))
                                                {
                                                   if(_loc12_ && param1)
                                                   {
                                                      §§push(this.§!"%§);
                                                      break loop0;
                                                      addr876:
                                                   }
                                                   §§push(Number((§?P§.getItemByName("MovieClip_StarCenter") as §6n§).x + (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x));
                                                   if(!_loc12_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr631:
                                                      if(!(_loc12_ && this))
                                                      {
                                                         addr602:
                                                         §§push(Number((§?P§.getItemByName("MovieClip_StarCenter") as §6n§).y + (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y));
                                                         if(_loc13_ || _loc3_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr610:
                                                            if(_loc13_)
                                                            {
                                                               this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§^"§,§?!`§.§9!9§,_loc8_);
                                                               if(_loc13_)
                                                               {
                                                                  if(_loc13_ || this)
                                                                  {
                                                                     §?P§.addChild(this.§3=§);
                                                                     this.§>8§.push(this.§3=§);
                                                                     addr552:
                                                                     if(!_loc13_)
                                                                     {
                                                                        this.§>8§.push(this.§3=§);
                                                                        addr715:
                                                                        addr709:
                                                                     }
                                                                     addr892:
                                                                     var _loc10_:*;
                                                                     §§push((_loc10_ = this).§`S§);
                                                                     if(!(_loc12_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     var _loc11_:* = §§pop();
                                                                     if(!(_loc12_ && param1))
                                                                     {
                                                                        _loc10_.§`S§ = _loc11_;
                                                                     }
                                                                     addr927:
                                                                     return;
                                                                     addr560:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr855:
                                                                     addr870:
                                                                  }
                                                                  §§push(this.§!"%§.getValue());
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     addr856:
                                                                     §§push(§§pop() / _loc4_);
                                                                     while(true)
                                                                     {
                                                                        §§push(2);
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           addr859:
                                                                           while(true)
                                                                           {
                                                                              addr860:
                                                                              addr861:
                                                                              _loc6_ = Number(§§pop());
                                                                              §§push(_loc4_);
                                                                              loop34:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop() <= §§pop())
                                                                                 {
                                                                                    addr838:
                                                                                    continue loop30;
                                                                                 }
                                                                                 addr831:
                                                                                 addr815:
                                                                                 addr807:
                                                                                 this.§#!O§ = §'^§.§2Z§.§!!f§(this,{"mNewScoreCounter":this.§!"%§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                                 §§push(this.§#!O§);
                                                                                 do
                                                                                 {
                                                                                    §§pop().onComplete = this.§7,§;
                                                                                    §§push(this.§#!O§);
                                                                                 }
                                                                                 while(!(_loc13_ || param1));
                                                                                 
                                                                                 §§pop().play();
                                                                                 while(true)
                                                                                 {
                                                                                    addr793:
                                                                                    _loc7_ = this.§+!W§();
                                                                                    addr795:
                                                                                    continue loop34;
                                                                                 }
                                                                              }
                                                                              continue loop32;
                                                                           }
                                                                        }
                                                                        if(!(_loc13_ || _loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           addr750:
                                                                           _loc3_ = Number((§?P§.getItemByName("MovieClip_StarLeft") as §6n§).y + (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y);
                                                                           break loop6;
                                                                        }
                                                                        this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§8L§,§?!`§.§9!9§,_loc7_);
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§goto(addr807);
                                                                        }
                                                                        §?P§.addChild(this.§3=§);
                                                                        §§goto(addr715);
                                                                     }
                                                                  }
                                                                  §§goto(addr715);
                                                               }
                                                               §§goto(addr927);
                                                            }
                                                            §§goto(addr795);
                                                         }
                                                         §§goto(addr774);
                                                      }
                                                      §§goto(addr709);
                                                   }
                                                   if(_loc13_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      addr850:
                                                      §§goto(addr815);
                                                   }
                                                   §§goto(addr859);
                                                }
                                                §§goto(addr732);
                                             }
                                             continue loop0;
                                          }
                                       }
                                       if(_loc13_ || _loc2_)
                                       {
                                          §§goto(addr758);
                                       }
                                       §§goto(addr789);
                                    }
                                    addr694:
                                 }
                                 §§goto(addr649);
                              }
                           }
                           §§push(_loc4_);
                           if(_loc12_ && _loc3_)
                           {
                              continue;
                           }
                           if(!_loc12_)
                           {
                              §§push(§§pop() >= §§pop());
                              loop9:
                              while(_loc13_ || this)
                              {
                                 §§push(§§pop());
                                 loop10:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop11:
                                       while(_loc13_)
                                       {
                                          §§pop();
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc12_ && _loc3_)
                                             {
                                                addr886:
                                                §'!c§.§3!f§("Hiscore_Count",§>!x§,100);
                                                break;
                                             }
                                             §§push((§?P§.getItemByName("MovieClip_StarRight") as §6n§).mClip.currentLabel == "UnLit");
                                             while(true)
                                             {
                                                loop14:
                                                while(!§§pop())
                                                {
                                                   §§push(this.§6!Z§);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         addr290:
                                                         if(_loc13_ || this)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               break loop14;
                                                            }
                                                            if(_loc13_)
                                                            {
                                                               this.§6!Z§ = true;
                                                               addr304:
                                                               if(_loc12_)
                                                               {
                                                                  §§goto(addr695);
                                                               }
                                                               §§goto(addr892);
                                                            }
                                                            §§goto(addr655);
                                                         }
                                                         else
                                                         {
                                                            addr411:
                                                            §§push(Number((§?P§.getItemByName("MovieClip_StarRight") as §6n§).y + (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y));
                                                            if(!_loc13_)
                                                            {
                                                               addr389:
                                                               if(!(_loc12_ && _loc3_))
                                                               {
                                                                  if(!(_loc12_ && _loc3_))
                                                                  {
                                                                     if(_loc13_ || param1)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        §§goto(addr411);
                                                                     }
                                                                     §§goto(addr750);
                                                                  }
                                                                  §§goto(addr628);
                                                               }
                                                               §§goto(addr602);
                                                            }
                                                            if(!(_loc12_ && _loc3_))
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr371:
                                                               if(!_loc12_)
                                                               {
                                                                  this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§1m§,§?!`§.§9!9§,_loc9_);
                                                                  addr343:
                                                                  if(!_loc12_)
                                                                  {
                                                                     §?P§.addChild(this.§3=§);
                                                                     addr319:
                                                                     if(!(_loc13_ || _loc3_))
                                                                     {
                                                                        §§goto(addr343);
                                                                     }
                                                                     this.§>8§.push(this.§3=§);
                                                                     §§goto(addr892);
                                                                     addr313:
                                                                     addr326:
                                                                  }
                                                                  §§goto(addr371);
                                                               }
                                                               break loop12;
                                                            }
                                                            §§goto(addr860);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.§9X§.stop();
                                                         while(true)
                                                         {
                                                            if(_loc13_ || param1)
                                                            {
                                                               if(!_loc12_)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(this.§?R§);
                                                                     while(!_loc12_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        continue loop10;
                                                                     }
                                                                     continue loop15;
                                                                     addr234:
                                                                  }
                                                                  §§goto(addr651);
                                                               }
                                                               §§goto(addr610);
                                                            }
                                                            break;
                                                            addr144:
                                                            if(!(_loc13_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(this.§"f§);
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  §§pop().onComplete = this.§>!4§;
                                                                  loop27:
                                                                  while(_loc13_)
                                                                  {
                                                                     if(!(_loc12_ && _loc2_))
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§push(this.§"f§);
                                                                                 if(!(_loc13_ || param1))
                                                                                 {
                                                                                    continue loop26;
                                                                                 }
                                                                                 §§pop().play();
                                                                                 if(!(_loc12_ && param1))
                                                                                 {
                                                                                    if(!(_loc13_ || _loc2_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       continue loop25;
                                                                                    }
                                                                                    addr485:
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(this.§7S§());
                                                                                       if(!(_loc12_ && _loc3_))
                                                                                       {
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             if(!(_loc12_ && _loc2_))
                                                                                             {
                                                                                                if(_loc13_ || _loc2_)
                                                                                                {
                                                                                                   addr444:
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc12_ && _loc3_))
                                                                                                   {
                                                                                                      _loc9_ = §§pop();
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr793);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr653);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr654);
                                                                                       }
                                                                                       §§goto(addr444);
                                                                                    }
                                                                                    §§goto(addr850);
                                                                                 }
                                                                                 §§goto(addr892);
                                                                              }
                                                                              §§goto(addr838);
                                                                           }
                                                                           §§goto(addr831);
                                                                        }
                                                                        else
                                                                        {
                                                                           loop20:
                                                                           while(!(_loc12_ && _loc2_))
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(this.§7!"§);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       while(!_loc12_)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop20;
                                                                                       }
                                                                                       continue loop14;
                                                                                       addr253:
                                                                                    }
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       if(!(_loc13_ || _loc2_))
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§push(!§§pop());
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr234);
                                                                                    }
                                                                                 }
                                                                                 addr187:
                                                                                 if(_loc12_ && this)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          (§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(false);
                                                                                          while(_loc13_ || this)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§"f§ = §'^§.§2Z§.§!!f§((§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).mClip,{
                                                                                                   "scaleX":1,
                                                                                                   "scaleY":1
                                                                                                },{
                                                                                                   "scaleX":7,
                                                                                                   "scaleY":7
                                                                                                },0.1);
                                                                                                break loop27;
                                                                                                addr230:
                                                                                             }
                                                                                             break loop27;
                                                                                          }
                                                                                          §§goto(addr560);
                                                                                          addr162:
                                                                                       }
                                                                                       addr200:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             if(!(_loc12_ && this))
                                                                                             {
                                                                                                (§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(true);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc13_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc13_ || _loc2_)
                                                                                                      {
                                                                                                         §§goto(addr230);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr814);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr304);
                                                                                                   }
                                                                                                   §§goto(addr751);
                                                                                                }
                                                                                                addr216:
                                                                                             }
                                                                                             §§goto(addr861);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr290);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr198:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr694);
                                                                                 }
                                                                                 §§goto(addr695);
                                                                              }
                                                                              §§goto(addr319);
                                                                           }
                                                                           §§goto(addr313);
                                                                        }
                                                                     }
                                                                     §§goto(addr216);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc13_ || this)
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           §§goto(addr144);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr200);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr162);
                                                                     }
                                                                     §§goto(addr112);
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                            }
                                                            §§goto(addr631);
                                                         }
                                                      }
                                                      §§goto(addr552);
                                                   }
                                                }
                                                this.§+b§ = true;
                                                §§goto(addr485);
                                             }
                                          }
                                          this.§9X§.delay = 1000;
                                          §§goto(addr876);
                                       }
                                       §§goto(addr650);
                                    }
                                    §§goto(addr480);
                                 }
                              }
                              §§goto(addr692);
                           }
                           §§goto(addr856);
                        }
                     }
                     §§push(§§pop().getValue());
                     addr507:
                     break;
                     if(!(_loc13_ || _loc3_))
                     {
                        continue;
                     }
                     §§goto(addr515);
                  }
                  if(_loc13_ || _loc2_)
                  {
                     §§goto(addr628);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr855);
               }
               §§pop().§[@§(§&!"§.controller.getScore(10));
               §§goto(addr870);
            }
            §§goto(addr886);
         }
         §§goto(addr326);
      }
      
      protected function §+!W§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'!c§.§3!f§("Hiscore_Star_Splash1",§#x§);
         }
         do
         {
            (§?P§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.gotoAndStop("Lit");
         }
         while(_loc1_ && this);
         
         return §+!D§.§>!8§;
      }
      
      protected function §'"#§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'!c§.§3!f§("Hiscore_Star_Splash2",§#x§);
         }
         do
         {
            (§?P§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.gotoAndStop("Lit");
         }
         while(!(_loc2_ || this));
         
         return §+!D§.§>!8§;
      }
      
      protected function §7S§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §'!c§.§3!f§("Hiscore_Star_Splash3",§#x§);
         }
         do
         {
            (§?P§.getItemByName("MovieClip_StarRight") as §6n§).mClip.gotoAndStop("Lit");
         }
         while(_loc1_ && _loc1_);
         
         return §+!D§.§>!8§;
      }
      
      private function §7,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'!c§.§;! §(§>!x§);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§?!`§ = null;
         if(_loc6_ || _loc2_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               addr46:
               while(true)
               {
                  §?P§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                  continue loop0;
               }
            }
            addr57:
         }
         while(true)
         {
            §?P§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
            if(_loc5_ && this)
            {
               continue;
            }
            if(_loc6_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr57);
            }
            §§goto(addr46);
         }
         for each(_loc2_ in this.§>8§)
         {
            if(!(_loc5_ && param1))
            {
               _loc2_.update(param1);
            }
         }
         if(!_loc5_)
         {
            if(this.§;!]§ >= 0)
            {
               while(true)
               {
                  this.§&y§(param1);
                  addr144:
                  while(true)
                  {
                  }
                  addr119:
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  addr98:
                  return;
                  addr136:
               }
            }
            for(; nextState.length > 0; §§goto(addr144))
            {
               if(_loc6_ || this)
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  §&!"§.§1!D§.clearLevel();
               }
               §§goto(addr119);
            }
            §§goto(addr98);
         }
         §§goto(addr136);
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
               this.§1!8§();
               loop1:
               while(true)
               {
                  this.§;!]§ = 0;
                  loop2:
                  while(true)
                  {
                     this.mNewScoreCounter = 0;
                     loop3:
                     while(true)
                     {
                        §§push(this.§#!O§);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§#!O§);
                                 addr191:
                                 addr139:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    addr192:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop2;
                                       }
                                       this.§#!O§ = null;
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue loop4;
                                    }
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    addr148:
                                    while(true)
                                    {
                                       §'!c§.§;! §(§>!x§);
                                       loop8:
                                       while(true)
                                       {
                                          this.§2!§(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          while(!_loc2_)
                                          {
                                             §?P§.setText("0","TextField_LevelEndScore");
                                             loop10:
                                             while(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   §?P§.setText("0","TextField_LevelEndScoreEffects");
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(this.§7!k§);
                                                      loop19:
                                                      for(; §§pop(); while(true)
                                                      {
                                                         §§push(this.§7!k§);
                                                         if(!(_loc1_ || _loc1_))
                                                         {
                                                            break;
                                                         }
                                                         §§pop().§9O§();
                                                         while(_loc1_)
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               this.§7!k§ = null;
                                                               if(_loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     break loop19;
                                                                  }
                                                                  §§goto(addr79);
                                                               }
                                                               §§goto(addr95);
                                                               continue;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop8;
                                                         §§goto(addr97);
                                                      })
                                                      {
                                                         if(_loc1_ || this)
                                                         {
                                                            if(_loc1_ || _loc1_)
                                                            {
                                                               if(§?P§.movieClip.contains(this.§7!k§))
                                                               {
                                                                  while(!_loc2_)
                                                                  {
                                                                     if(_loc2_ && this)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §?P§.movieClip.removeChild(this.§7!k§);
                                                                  }
                                                                  continue loop10;
                                                                  addr79:
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                         while(!_loc2_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         continue loop18;
                                                      }
                                                      return;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr148);
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           while(true)
                           {
                              §§push(this.§"f§);
                              if(_loc1_ || _loc1_)
                              {
                                 if(§§pop())
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr130);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§pop().stop();
                                    continue loop0;
                                 }
                                 addr169:
                              }
                              §§goto(addr182);
                           }
                           continue loop2;
                        }
                        §§goto(addr191);
                     }
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      protected function §2!§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§?P§.getItemByName("Button_Menu") as §;§).setComponentVisualState(param1);
            do
            {
               (§?P§.getItemByName("Button_Replay") as §;§).setComponentVisualState(param1);
               do
               {
                  (§?P§.getItemByName("Button_NextLevel") as §;§).setComponentVisualState(param1);
                  do
                  {
                     (§?P§.getItemByName("Button_CutScene") as §;§).setComponentVisualState(param1);
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               while(_loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      private function §1!8§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§?!`§ = null;
         if(_loc4_)
         {
            if(this.§9X§)
            {
               if(_loc4_ || _loc1_)
               {
                  this.§9X§.stop();
                  try
                  {
                     addr39:
                     this.§9X§.removeEventListener(TimerEvent.TIMER,this.§`%§);
                     if(_loc5_)
                     {
                     }
                  }
                  catch(e:Error)
                  {
                  }
                  do
                  {
                     this.§'!z§();
                  }
                  while(_loc5_);
                  
                  return;
                  addr170:
                  addr163:
               }
               §§goto(addr39);
            }
            var _loc2_:int = 0;
            if(_loc4_)
            {
               var _loc3_:* = this.§>8§;
               if(_loc4_)
               {
                  loop0:
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     loop1:
                     while(true)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                        addr136:
                        while(true)
                        {
                           addr110:
                           while(true)
                           {
                              if(!§?P§.contains(splash))
                              {
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr140:
                  if(!_loc5_)
                  {
                     this.§>8§ = new Vector.<§?!`§>();
                     §§goto(addr170);
                  }
                  §§goto(addr163);
               }
               §§goto(addr116);
            }
            §§goto(addr140);
         }
         §§goto(addr39);
      }
      
      protected function §'!z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            (§?P§.getItemByName("TextField_BestScore") as §+!@§).setVisibility(false);
            do
            {
               (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(false);
               do
               {
                  (§?P§.getItemByName("TextField_NewHighScore") as §+!@§).setVisibility(false);
               }
               while(_loc1_ && this);
               
            }
            while(!(_loc2_ || _loc1_));
            
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
      
      protected function §9!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §!x§();
         }
         do
         {
            §<f§(this.§+>§());
         }
         while(_loc2_ && _loc1_);
         
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:String = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               if("NEXT_LEVEL" === _loc5_)
               {
                  if(!(_loc7_ && param3))
                  {
                     §§push(0);
                     if(_loc7_)
                     {
                        addr190:
                     }
                  }
                  else
                  {
                     addr173:
                     §§push(2);
                     if(!_loc7_)
                     {
                        addr176:
                     }
                  }
               }
               else if("REPLAY" === _loc5_)
               {
                  if(!(_loc7_ && param3))
                  {
                     addr164:
                     §§push(1);
                     if(_loc7_)
                     {
                        §§goto(addr176);
                     }
                  }
                  else
                  {
                     §§goto(addr173);
                  }
               }
               else if("WATCH_REPLAY" === _loc5_)
               {
                  if(_loc6_)
                  {
                     §§goto(addr173);
                  }
                  else
                  {
                     addr187:
                     §§push(3);
                     if(_loc6_)
                     {
                        §§goto(addr190);
                     }
                     else
                     {
                        addr212:
                     }
                  }
               }
               else
               {
                  if("MENU" === _loc5_)
                  {
                     if(_loc6_ || param3)
                     {
                        §§goto(addr187);
                     }
                     addr217:
                     switch(§§pop())
                     {
                        case 0:
                           this.§9!C§();
                           break;
                        case 1:
                           §<f§(this.§=!2§());
                           break loop0;
                           addr127:
                        case 2:
                           §<f§(this.§=!2§());
                           §§push(§&!"§.§1!D§);
                           if(_loc6_)
                           {
                              §§push(§§pop().§&!I§());
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                                 if(_loc6_ || param3)
                                 {
                                    continue;
                                 }
                              }
                              addr89:
                              if(§§pop())
                              {
                                 addr90:
                                 if(!(_loc6_ || param2))
                                 {
                                    break;
                                 }
                                 addr99:
                                 §&!"§.§1!D§.§@!Z§(_loc4_);
                              }
                              break loop0;
                           }
                           §§goto(addr99);
                           addr119:
                        case 3:
                           §'!c§.§&j§();
                           addr54:
                           if(!_loc7_)
                           {
                              if(!(_loc7_ && this))
                              {
                                 addr41:
                                 §<f§(this.§@y§());
                                 if(_loc6_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr90);
                              }
                              else
                              {
                                 §§goto(addr119);
                              }
                           }
                           §§goto(addr99);
                        case 4:
                           §6!!§.singleton.§%!O§();
                           if(!_loc7_)
                           {
                              if(_loc6_ || param2)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(true)
                                       {
                                          break loop0;
                                       }
                                       §§goto(addr41);
                                    }
                                    else
                                    {
                                       §§goto(addr127);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr54);
                                 }
                                 §§goto(addr99);
                              }
                              §§goto(addr41);
                           }
                     }
                     break;
                  }
                  if("FULLSCREEN_BUTTON" !== _loc5_)
                  {
                     §§goto(addr217);
                     §§push(5);
                  }
                  §§goto(addr217);
                  §§push(4);
                  if(_loc6_ || param1)
                  {
                     §§goto(addr212);
                  }
               }
               §§goto(addr217);
            }
            §§goto(addr164);
         }
      }
      
      protected function §=!2§() : String
      {
         return §[j§.§-!q§;
      }
      
      protected function §+>§() : String
      {
         return StateCutScene.§-!q§;
      }
      
      public function §@y§() : String
      {
         return §4!9§.§-!q§;
      }
   }
}
