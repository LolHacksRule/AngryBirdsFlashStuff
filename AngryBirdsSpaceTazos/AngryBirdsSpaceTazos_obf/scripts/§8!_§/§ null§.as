package §8!_§
{
   import § !Y§.§]!,§;
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§&"$§;
   import §^"#§.§]!"§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § null§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const §5B§:Number = 30;
      
      protected static const §^!s§:String = "ScoreLoopCountChannel";
      
      protected static const §2g§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || § null§)
         {
            STATE_NAME = "LevelEndState";
            while(true)
            {
               §5B§ = 30;
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            §^!s§ = "ScoreLoopCountChannel";
            do
            {
               §2g§ = "EndScreenEffectChannel";
            }
            while(!_loc2_);
            
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §+!v§:§5!9§;
      
      private var §<x§:Number;
      
      private var §2!+§:Number = 0.0;
      
      private var §use §:Number = 0.0;
      
      private var §8!i§:Boolean = false;
      
      private var §96§:Timer;
      
      private var §&!=§:§&"$§;
      
      protected var §6!;§:Array;
      
      protected var §3_§:§]!"§;
      
      protected var §4"B§:Vector.<§]!"§>;
      
      public var mNewScoreCounter:int;
      
      private var §;>§:int;
      
      private var §;!0§:Boolean;
      
      protected var §!!j§:Boolean;
      
      private var §9N§:§]!,§;
      
      protected var §@!f§:Boolean;
      
      private var §]";§:§5!9§;
      
      protected var §`">§:Boolean;
      
      protected var §@a§:int;
      
      public function § null§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.§6!;§ = [];
            while(true)
            {
               this.§9N§ = new §]!,§();
               loop1:
               while(!_loc6_)
               {
                  while(true)
                  {
                     super(param1,param3,param4,param2);
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            loop0:
            while(true)
            {
               §8!A§ = new §1"F§(this);
               while(true)
               {
                  §8!A§.init(this.§!!n§());
                  loop2:
                  while(!_loc1_)
                  {
                     this.§,!,§();
                     while(true)
                     {
                        this.§4"B§ = new Vector.<§]!"§>();
                        while(_loc2_)
                        {
                           §<!O§.§;!D§(§^!s§,1,1);
                           while(!(_loc1_ && _loc1_))
                           {
                              §<!O§.§;!D§(§2g§,3,1);
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function §,!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§6!;§);
            while(true)
            {
               §§pop().push((§8!A§.getItemByName("Button_Menu") as §@_§).x);
            }
            addr111:
         }
         loop1:
         while(true)
         {
            §§push(this.§6!;§);
            while(true)
            {
               §§pop().push((§8!A§.getItemByName("Button_Replay") as §@_§).x);
               addr98:
               addr69:
               while(true)
               {
                  §§push(this.§6!;§);
                  loop4:
                  while(true)
                  {
                     §§pop().push((§8!A§.getItemByName("Button_NextLevel") as §@_§).x);
                     addr80:
                     while(!(_loc1_ && this))
                     {
                        continue loop4;
                     }
                     continue loop1;
                  }
               }
               return;
               if(!(_loc2_ || this))
               {
                  continue;
               }
               if(!_loc1_)
               {
                  §§pop().push((§8!A§.getItemByName("Button_CutScene") as §@_§).x);
                  if(_loc2_)
                  {
                     if(_loc1_ && _loc2_)
                     {
                        §§goto(addr98);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr80);
               }
               §§goto(addr111);
            }
         }
      }
      
      protected function §!!n§() : XML
      {
         return §-G§.§4+§.Views.View_LevelEnd[0];
      }
      
      protected function §;2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§ !g§.§;!'§.§&!`§.userProgress.§<!J§(§6u§.currentLevel))
            {
               (§8!A§.getItemByName("Button_Menu") as §@_§).setVisibility(true);
               loop0:
               while(!_loc2_)
               {
                  (§8!A§.getItemByName("Button_Replay") as §@_§).setVisibility(true);
                  loop1:
                  for(; !(_loc2_ && this); if(!(_loc1_ || this))
                  {
                     continue;
                  },if(!_loc1_)
                  {
                     §§goto(addr222);
                  },§§goto(addr24))
                  {
                     while(true)
                     {
                        (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
                        loop4:
                        for(; !_loc2_; if(_loc1_ || _loc2_)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              §§goto(addr83);
                           }
                           addr270:
                           (§8!A§.getItemByName("Button_Menu") as §@_§).setVisibility(false);
                           break loop0;
                        })
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(true);
                              while(_loc1_)
                              {
                                 (§8!A§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0];
                                 loop6:
                                 while(_loc1_ || _loc1_)
                                 {
                                    (§8!A§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[1];
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          continue loop4;
                                       }
                                       continue loop6;
                                       addr83:
                                       (§8!A§.getItemByName("Button_CutScene") as §@_§).x = this.§6!;§[2];
                                       if(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              addr24:
                              return;
                              addr196:
                           }
                           loop8:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 while(true)
                                 {
                                    (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
                                    continue loop8;
                                 }
                                 addr251:
                              }
                              (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(true);
                              break loop4;
                           }
                        }
                        (§8!A§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[0] + Math.abs(this.§6!;§[1] - this.§6!;§[0]) / 2;
                        addr222:
                        (§8!A§.getItemByName("Button_CutScene") as §@_§).x = this.§6!;§[1] + Math.abs(this.§6!;§[2] - this.§6!;§[1]) / 2;
                        §§goto(addr196);
                     }
                  }
               }
               (§8!A§.getItemByName("Button_Replay") as §@_§).setVisibility(true);
               §§goto(addr251);
            }
            §§goto(addr270);
         }
         §§goto(addr157);
      }
      
      protected function §%[§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§8!A§.getItemByName("Button_Menu") as §@_§).setVisibility(true);
            loop0:
            while(true)
            {
               (§8!A§.getItemByName("Button_Replay") as §@_§).setVisibility(true);
               loop1:
               while(true)
               {
                  (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(false);
                  loop2:
                  while(true)
                  {
                     if(!§6u§.getNextLevelId())
                     {
                        (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
                        loop3:
                        while(!(_loc1_ && _loc2_))
                        {
                           (§8!A§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0] + Math.abs(this.§6!;§[1] - this.§6!;§[0]) / 2;
                           while(!(_loc1_ && _loc2_))
                           {
                              (§8!A§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[1] + Math.abs(this.§6!;§[2] - this.§6!;§[1]) / 2;
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              if(_loc1_ && _loc1_)
                              {
                                 break loop2;
                              }
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    addr20:
                                    return;
                                 }
                                 loop5:
                                 while(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       (§8!A§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0];
                                       break loop3;
                                    }
                                    continue loop1;
                                    while(true)
                                    {
                                       (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(true);
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                              }
                              while(_loc1_ && _loc2_)
                              {
                                 §§goto(addr193);
                              }
                              (§8!A§.getItemByName("Button_NextLevel") as §@_§).x = this.§6!;§[2];
                              break loop2;
                              addr169:
                           }
                        }
                        while(true)
                        {
                           (§8!A§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[1];
                           §§goto(addr169);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr193);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§`">§ = false;
               loop1:
               while(true)
               {
                  §9q§.pause();
                  loop2:
                  while(true)
                  {
                     this.§&!=§ = new §&"$§(0,0,0,0);
                     loop3:
                     while(true)
                     {
                        §8!A§.movieClip.addChildAt(this.§&!=§,§8!A§.movieClip.numChildren - 1);
                        while(true)
                        {
                           if(§6u§.isCutSceneNext())
                           {
                              if(!_loc2_)
                              {
                                 this.§;2§();
                              }
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.mNewScoreCounter = 0;
                                    addr119:
                                    while(true)
                                    {
                                       this.§;!0§ = false;
                                       do
                                       {
                                          §<!O§.playSound("LevelCompletedTheme1");
                                          continue loop5;
                                       }
                                       while(!(_loc3_ || _loc2_));
                                       
                                       if(_loc3_)
                                       {
                                          return;
                                          addr42:
                                       }
                                       continue loop0;
                                    }
                                    addr125:
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           else
                           {
                              this.§%[§();
                           }
                           §§goto(addr125);
                           if(_loc3_ || _loc3_)
                           {
                              this.§2!+§ = 0;
                              loop11:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    this.§use § = 0;
                                    while(true)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr119);
                                       addr63:
                                       this.§,">§();
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop11;
                                       }
                                       if(!_loc2_)
                                       {
                                          §§goto(addr33);
                                       }
                                       §§goto(addr88);
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr102);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      private function §,">§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!!j§ = false;
            loop0:
            while(true)
            {
               this.§&!U§();
               while(true)
               {
                  this.§96§ = new Timer(500);
                  while(true)
                  {
                     this.§;>§ = 0;
                     addr67:
                     while(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
                  addr55:
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§96§.start();
                     addr62:
                     if(_loc2_)
                     {
                        while(!_loc2_)
                        {
                           §§goto(addr55);
                           §§goto(addr62);
                        }
                        §§goto(addr67);
                        addr53:
                     }
                     return;
                     addr34:
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      protected function §2"9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(§ !g§.§;!'§.§&!`§.userProgress.§#!K§(§6u§.currentLevel) == 100)
            {
               addr84:
               (§8!A§.getItemByName("MovieClip_ResultMEFeather") as §,y§).mClip.gotoAndStop("On");
            }
            else
            {
               (§8!A§.getItemByName("MovieClip_ResultMEFeather") as §,y§).mClip.gotoAndStop("Off");
               if(!(_loc1_ && this))
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     §§goto(addr84);
                  }
                  §§goto(addr25);
               }
            }
         }
         addr25:
      }
      
      protected function §8!m§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!this.§@!f§)
            {
               §8!A§.setText("Best " + param2.toString(),"TextField_BestScore");
               loop0:
               for(; !_loc4_; this.§@a§ = §6u§.getNumStarsForLevel(§6u§.currentLevel,param2),if(_loc4_)
               {
                  continue;
               },if(!_loc4_)
               {
                  §§push(this.§@a§);
                  if(_loc5_ || param2)
                  {
                     var _loc3_:* = §§pop();
                     if(_loc5_ || param1)
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(!(_loc4_ && param1))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || param2)
                                 {
                                    addr184:
                                    §§push(0);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr255:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("OneStar");
                                             addr46:
                                             break;
                                             addr69:
                                          case 1:
                                             (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("TwoStar");
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             break;
                                          case 2:
                                             (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("ThreeStar");
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(!(_loc4_ && param1))
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
                                                §§goto(addr46);
                                             }
                                       }
                                       return;
                                       addr254:
                                    }
                                    else
                                    {
                                       addr201:
                                       §§push(_loc3_);
                                       if(!(_loc4_ && param2))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(1);
                                                if(_loc5_)
                                                {
                                                   addr220:
                                                }
                                             }
                                             else
                                             {
                                                addr231:
                                                §§push(2);
                                                if(_loc4_ && param1)
                                                {
                                                }
                                             }
                                             §§goto(addr254);
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(_loc5_ || param2)
                                             {
                                                addr230:
                                                if(§§pop() === _loc3_)
                                                {
                                                   §§goto(addr231);
                                                }
                                                else
                                                {
                                                   §§goto(addr254);
                                                   §§push(3);
                                                }
                                                §§goto(addr254);
                                             }
                                          }
                                          §§goto(addr254);
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr231);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr201);
                                 }
                              }
                              §§goto(addr254);
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr255);
               }
               else
               {
                  §§goto(addr118);
               })
               {
                  if(_loc5_ || this)
                  {
                     continue;
                  }
                  loop2:
                  while(true)
                  {
                     § !g§.§;!'§.§&!`§.userProgress.§%P§(§6u§.currentLevel,param2);
                     addr118:
                     addr135:
                     while(_loc4_ && _loc3_)
                     {
                        while(true)
                        {
                           §§push(param1);
                           if(_loc5_)
                           {
                              §§push(int(§§pop()));
                           }
                           param2 = §§pop();
                           continue loop2;
                        }
                        continue loop2;
                     }
                     §8!A§.setText("New Highscore!","TextField_BestScore");
                     break loop0;
                  }
               }
               §§goto(addr255);
            }
            §§goto(addr139);
         }
         §§goto(addr135);
      }
      
      protected function §&!U§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§ !g§.§;!'§.§&!`§.userProgress.getScoreForLevel(§6u§.currentLevel));
         if(_loc8_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§9q§.§&!$§.getScore(10));
         if(!(_loc7_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && _loc2_))
         {
            this.§@!f§ = _loc2_ > _loc1_;
            loop0:
            while(true)
            {
               addr61:
               while(true)
               {
                  this.§8!m§(_loc2_,_loc1_);
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr61);
         }
         §§push(§9q§.§&!$§.getEagleScore());
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§ !g§.§;!'§.§&!`§.userProgress.§#!K§(§6u§.currentLevel));
         if(!(_loc7_ && _loc2_))
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
               if(!(_loc7_ && _loc2_))
               {
                  §§push(int(§§pop()));
                  if(_loc8_)
                  {
                     _loc4_ = §§pop();
                     if(!(_loc7_ && _loc3_))
                     {
                        addr140:
                        §§push(§ !g§.§;!'§);
                        if(!_loc7_)
                        {
                           §§push(§§pop().§&!`§);
                           if(!_loc7_)
                           {
                              §§push(§§pop().userProgress);
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§pop().§]I§(§6u§.currentLevel,_loc4_);
                                 addr162:
                                 §§push(§ !g§.§;!'§.§&!`§.userProgress);
                              }
                              §§push(§§pop().§,R§(§6u§.currentLevel,_loc2_));
                              if(!_loc7_)
                              {
                                 addr169:
                                 §§push(int(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              if(!_loc7_)
                              {
                                 (§8!A§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).setVisibility(false);
                                 while(true)
                                 {
                                    (§8!A§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.gotoAndStop("UnLit");
                                    addr194:
                                    if(_loc7_ && this)
                                    {
                                       continue;
                                    }
                                    return;
                                    addr201:
                                 }
                              }
                              while(true)
                              {
                                 (§8!A§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.gotoAndStop("UnLit");
                                 while(_loc8_)
                                 {
                                    (§8!A§.getItemByName("MovieClip_StarRight") as §,y§).mClip.gotoAndStop("UnLit");
                                    if(!(_loc8_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr194);
                                 }
                              }
                              §§goto(addr201);
                           }
                        }
                     }
                     §§goto(addr162);
                  }
               }
               §§goto(addr169);
            }
            §§goto(addr140);
         }
         §§goto(addr162);
      }
      
      protected function §[?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§@!f§)
            {
               (§8!A§.getItemByName("TextField_BestScore") as §&!>§).setVisibility(true);
               loop0:
               while(!(_loc1_ && _loc1_))
               {
                  (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(true);
                  if(_loc1_)
                  {
                     continue;
                  }
                  if(!(_loc1_ && _loc1_))
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr20);
                     }
                     else
                     {
                        addr134:
                        §<!O§.playSound("Hiscore_Badge",§2g§);
                        loop4:
                        while(true)
                        {
                           §8!A§.setText("New Highscore!","TextField_NewHighScore");
                           loop5:
                           while(true)
                           {
                              (§8!A§.getItemByName("TextField_NewHighScore") as §&!>§).setVisibility(true);
                              addr105:
                              while(true)
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(false);
                              break loop0;
                           }
                        }
                        addr138:
                     }
                  }
                  while(_loc1_ && this)
                  {
                     §§goto(addr105);
                     break loop0;
                  }
                  addr20:
                  return;
                  addr80:
               }
               while(true)
               {
                  this.§`!r§();
                  §§goto(addr80);
               }
            }
            §§goto(addr134);
         }
         §§goto(addr138);
      }
      
      protected function §`!r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§2!+§ = 0;
            while(true)
            {
               this.§use § = 0;
               while(_loc2_)
               {
                  this.§<x§ = §5B§;
                  if(_loc2_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      private function §4Y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x = (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x - this.§2!+§;
         }
         loop0:
         while(true)
         {
            (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y = (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y - this.§use §;
            while(true)
            {
               if(this.§<x§ <= 0)
               {
                  this.§2!+§ = 0;
                  continue;
               }
               while(true)
               {
                  §§push(this);
                  §§push(Math.random() - 0.5);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(this.§<x§);
                     if(_loc2_)
                     {
                        §§push(§§pop() / §5B§);
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc2_)
                     {
                        §§push(§§pop() * 20);
                     }
                  }
                  §§pop().§2!+§ = §§pop();
                  loop9:
                  while(true)
                  {
                     §§push(this);
                     §§push(Math.random() - 0.5);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.§<x§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§pop() / §5B§);
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc2_)
                        {
                           §§push(§§pop() * 20);
                        }
                     }
                     §§pop().§use § = §§pop();
                     addr166:
                     while(true)
                     {
                        (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x = (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x + this.§2!+§;
                        addr111:
                        while(true)
                        {
                           if(!(_loc3_ && param1))
                           {
                              continue loop0;
                           }
                           continue loop9;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      private function §9!k§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = §6u§.getGoldScoreForLevel(§6u§.currentLevel);
         var _loc5_:Number = §6u§.getSilverScoreForLevel(§6u§.currentLevel);
         if(!_loc10_)
         {
            if((§8!A§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§9N§);
               loop0:
               while(!_loc10_)
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(_loc9_)
                  {
                     §§push(_loc5_);
                     loop2:
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
                                    addr673:
                                    while(true)
                                    {
                                       if(!_loc9_)
                                       {
                                          addr868:
                                          §<!O§.playSound("Hiscore_Count",§^!s§,100);
                                          break;
                                       }
                                       §§push((§8!A§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.currentLabel == "UnLit");
                                    }
                                    addr873:
                                    while(true)
                                    {
                                       §<!O§.playSound("Hiscore_Star_Splash1",§2g§);
                                       addr858:
                                       addr852:
                                       addr841:
                                       this.§96§.delay = 1000;
                                       §§push(this.§9N§);
                                       while(true)
                                       {
                                          §§pop().§-"F§(§9q§.§&!$§.getScore(10));
                                          addr846:
                                          while(true)
                                          {
                                             §§push(this.§9N§);
                                             break loop0;
                                          }
                                       }
                                    }
                                 }
                                 addr672:
                              }
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.§9N§);
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop().getValue());
                                       if(_loc10_)
                                       {
                                          continue loop1;
                                       }
                                       if(_loc9_ || _loc2_)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc9_)
                                          {
                                             continue loop2;
                                          }
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             §§push(§§pop() >= §§pop());
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                while(!(_loc10_ && _loc2_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(_loc9_ || this)
                                                         {
                                                            if(!(_loc9_ || _loc2_))
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§pop();
                                                            loop12:
                                                            while(!(_loc10_ && _loc3_))
                                                            {
                                                               §§push((§8!A§.getItemByName("MovieClip_StarRight") as §,y§).mClip.currentLabel == "UnLit");
                                                               while(true)
                                                               {
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(this.§;!0§);
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              this.§96§.stop();
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(this.§@!f§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          continue loop15;
                                                                                          addr150:
                                                                                          if(_loc9_ || _loc3_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr160:
                                                                                                §§push(!§§pop());
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr263:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(this.§!!j§);
                                                                                                            if(!(_loc10_ && _loc2_))
                                                                                                            {
                                                                                                               §§goto(addr150);
                                                                                                            }
                                                                                                            §§goto(addr160);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr413:
                                                                                                            §§push(Number((§8!A§.getItemByName("MovieClip_StarRight") as §,y§).x + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x));
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               if(_loc9_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(Number((§8!A§.getItemByName("MovieClip_StarRight") as §,y§).y + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y));
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     §§goto(addr413);
                                                                                                                  }
                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc9_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           _loc3_ = §§pop();
                                                                                                                           addr389:
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       this.§3_§ = new §]!"§(§ !g§.screenWidth,§ !g§.screenHeight,_loc2_,_loc3_,§]!"§.§4$§);
                                                                                                                                       break loop16;
                                                                                                                                    }
                                                                                                                                    break loop11;
                                                                                                                                 }
                                                                                                                                 addr623:
                                                                                                                                 if(_loc9_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr596:
                                                                                                                                    §§push(Number((§8!A§.getItemByName("MovieClip_StarCenter") as §,y§).y + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y));
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       this.§3_§ = new §]!"§(§ !g§.screenWidth,§ !g§.screenHeight,_loc2_,_loc3_,§]!"§.§#g§);
                                                                                                                                       §8!A§.addChild(this.§3_§);
                                                                                                                                       this.§4"B§.push(this.§3_§);
                                                                                                                                       addr874:
                                                                                                                                       var _loc7_:*;
                                                                                                                                       §§push((_loc7_ = this).§;>§);
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                       }
                                                                                                                                       var _loc8_:* = §§pop();
                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                       {
                                                                                                                                          _loc7_.§;>§ = _loc8_;
                                                                                                                                       }
                                                                                                                                       addr904:
                                                                                                                                       return;
                                                                                                                                       addr580:
                                                                                                                                       addr560:
                                                                                                                                       addr566:
                                                                                                                                       addr599:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr727:
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                          this.§3_§ = new §]!"§(§ !g§.screenWidth,§ !g§.screenHeight,_loc2_,_loc3_,§]!"§.§"!L§);
                                                                                                                                          §8!A§.addChild(this.§3_§);
                                                                                                                                          break loop12;
                                                                                                                                          addr711:
                                                                                                                                          addr730:
                                                                                                                                       }
                                                                                                                                       loop32:
                                                                                                                                       while(!(_loc10_ && param1))
                                                                                                                                       {
                                                                                                                                          addr807:
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc9_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() <= §§pop())
                                                                                                                                             {
                                                                                                                                                addr816:
                                                                                                                                                break loop1;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§]";§ = §!D§.§[!1§.§1"<§(this,{"mNewScoreCounter":this.§9N§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                                                                                                addr797:
                                                                                                                                                §§push(this.§]";§);
                                                                                                                                                do
                                                                                                                                                {
                                                                                                                                                   §§pop().onComplete = this.§,"9§;
                                                                                                                                                   §§push(this.§]";§);
                                                                                                                                                }
                                                                                                                                                while(_loc10_);
                                                                                                                                                
                                                                                                                                                addr771:
                                                                                                                                                §§pop().play();
                                                                                                                                                while(_loc9_)
                                                                                                                                                {
                                                                                                                                                   (§8!A§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.gotoAndStop("Lit");
                                                                                                                                                   §§push(Number((§8!A§.getItemByName("MovieClip_StarLeft") as §,y§).x + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x));
                                                                                                                                                   if(!(_loc10_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                      §§goto(addr727);
                                                                                                                                                      §§push(Number((§8!A§.getItemByName("MovieClip_StarLeft") as §,y§).y + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y));
                                                                                                                                                      addr754:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc6_ = §§pop();
                                                                                                                                                         addr837:
                                                                                                                                                         continue loop32;
                                                                                                                                                      }
                                                                                                                                                      addr836:
                                                                                                                                                   }
                                                                                                                                                   break loop12;
                                                                                                                                                }
                                                                                                                                                §§goto(addr846);
                                                                                                                                             }
                                                                                                                                             addr781:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             break loop32;
                                                                                                                                             §§goto(addr807);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr836);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr780);
                                                                                                                              }
                                                                                                                              §§goto(addr580);
                                                                                                                           }
                                                                                                                           §§goto(addr560);
                                                                                                                        }
                                                                                                                        addr833:
                                                                                                                        §§goto(addr834);
                                                                                                                        §§push(2);
                                                                                                                     }
                                                                                                                     §§goto(addr746);
                                                                                                                  }
                                                                                                                  §§goto(addr596);
                                                                                                               }
                                                                                                               §§goto(addr904);
                                                                                                            }
                                                                                                            addr615:
                                                                                                            if(_loc9_ || this)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               §§goto(addr623);
                                                                                                            }
                                                                                                            _loc6_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr781);
                                                                                                            }
                                                                                                            addr448:
                                                                                                            addr819:
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   addr262:
                                                                                                }
                                                                                                if(_loc9_ || _loc2_)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr653:
                                                                                       §<!O§.playSound("Hiscore_Star_Splash2",§2g§);
                                                                                       (§8!A§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.gotoAndStop("Lit");
                                                                                       addr640:
                                                                                       §§goto(addr615);
                                                                                       §§push(Number((§8!A§.getItemByName("MovieClip_StarCenter") as §,y§).x + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x));
                                                                                       addr640:
                                                                                       addr657:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr293:
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          this.§;!0§ = true;
                                                                                          addr307:
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§goto(addr640);
                                                                                          }
                                                                                          §§goto(addr874);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr657);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr566);
                                                                                 addr180:
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          if(_loc9_ || _loc2_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      if(_loc9_ || _loc2_)
                                                                                                      {
                                                                                                         (§8!A§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).setVisibility(true);
                                                                                                         loop27:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc10_ && this))
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§+!v§ = §!D§.§[!1§.§1"<§((§8!A§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).mClip,{
                                                                                                                           "scaleX":1,
                                                                                                                           "scaleY":1
                                                                                                                        },{
                                                                                                                           "scaleX":7,
                                                                                                                           "scaleY":7
                                                                                                                        },0.1);
                                                                                                                        loop23:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           if(!(_loc9_ || param1))
                                                                                                                           {
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           loop24:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§+!v§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().onComplete = this.§[?§;
                                                                                                                                 if(_loc10_ && param1)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc9_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§+!v§);
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§pop().play();
                                                                                                                                       if(!(_loc10_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   continue loop24;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr682:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr307);
                                                                                                                                          }
                                                                                                                                          §§goto(addr874);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              §§goto(addr874);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop27;
                                                                                                                        §§goto(addr239);
                                                                                                                     }
                                                                                                                     addr239:
                                                                                                                     §§goto(addr615);
                                                                                                                     addr87:
                                                                                                                  }
                                                                                                                  §§goto(addr797);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr316:
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§goto(addr874);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr711);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr263);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr615);
                                                                                                      }
                                                                                                      §§goto(addr599);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr481:
                                                                                                      if(_loc9_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            this.§`">§ = true;
                                                                                                            §<!O§.playSound("Hiscore_Star_Splash3",§2g§);
                                                                                                            addr454:
                                                                                                            if(!(_loc10_ && param1))
                                                                                                            {
                                                                                                               if(!(_loc10_ && _loc3_))
                                                                                                               {
                                                                                                                  (§8!A§.getItemByName("MovieClip_StarRight") as §,y§).mClip.gotoAndStop("Lit");
                                                                                                                  §§goto(addr448);
                                                                                                               }
                                                                                                               §§goto(addr816);
                                                                                                            }
                                                                                                            §§goto(addr764);
                                                                                                            addr493:
                                                                                                         }
                                                                                                         §§goto(addr858);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr819);
                                                                                                }
                                                                                                §§goto(addr493);
                                                                                             }
                                                                                             §§goto(addr454);
                                                                                          }
                                                                                          §§goto(addr389);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                                 addr324:
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       this.§4"B§.push(this.§3_§);
                                                                                       §§goto(addr316);
                                                                                    }
                                                                                    §§goto(addr837);
                                                                                 }
                                                                                 §§goto(addr754);
                                                                              }
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 §8!A§.addChild(this.§3_§);
                                                                                 §§goto(addr324);
                                                                              }
                                                                              §§goto(addr852);
                                                                           }
                                                                           §§goto(addr293);
                                                                        }
                                                                     }
                                                                     §§goto(addr481);
                                                                  }
                                                               }
                                                            }
                                                            if(!(_loc10_ && this))
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§goto(addr873);
                                                               }
                                                               this.§4"B§.push(this.§3_§);
                                                               §§goto(addr682);
                                                            }
                                                            §§goto(addr771);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr672);
                                                         }
                                                      }
                                                      §§goto(addr673);
                                                   }
                                                   §§goto(addr479);
                                                }
                                                continue loop4;
                                             }
                                          }
                                          addr832:
                                          §§goto(addr833);
                                          §§push(§§pop() / §§pop());
                                       }
                                       §§goto(addr832);
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr653);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr615);
                  §§push(Number(§§pop()));
               }
               while(true)
               {
                  if(_loc9_ || _loc2_)
                  {
                     §§goto(addr831);
                     §§push(§§pop().getValue());
                  }
                  §§goto(addr841);
                  §§goto(addr846);
               }
            }
            §§goto(addr868);
         }
         §§goto(addr615);
      }
      
      private function §,"9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §<!O§.§,!z§(§^!s§);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§]!"§ = null;
         if(_loc6_)
         {
            super.update(param1);
         }
         loop0:
         while(true)
         {
            addr39:
            addr58:
            addr70:
            while(true)
            {
               §8!A§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
               continue loop0;
            }
            var _loc3_:int = 0;
            for each(_loc2_ in this.§4"B§)
            {
               if(_loc6_)
               {
                  _loc2_.update(param1);
               }
            }
            if(!(_loc5_ && _loc3_))
            {
               if(this.§<x§ >= 0)
               {
                  while(true)
                  {
                     this.§4Y§(param1);
                     addr139:
                     while(true)
                     {
                     }
                  }
                  addr136:
               }
               while(nextState.length > 0)
               {
                  if(_loc6_ || _loc2_)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr139);
                        continue;
                     }
                     if(!_loc5_)
                     {
                        addr118:
                        §9q§.§>!L§.clearLevel();
                     }
                     else
                     {
                        §§goto(addr136);
                     }
                  }
                  break;
               }
               return;
            }
            §§goto(addr118);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.deActivate();
         }
         loop0:
         while(true)
         {
            this.§@!X§();
            loop1:
            while(true)
            {
               this.§<x§ = 0;
               while(true)
               {
                  this.mNewScoreCounter = 0;
                  loop3:
                  while(true)
                  {
                     §§push(this.§]";§);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§]";§);
                              loop10:
                              while(true)
                              {
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue loop4;
                                 }
                                 §8!A§.setText("0","TextField_LevelEndScoreEffects");
                                 loop11:
                                 for(; !_loc2_; while(!(_loc2_ && _loc1_))
                                 {
                                    §§goto(addr39);
                                 })
                                 {
                                    §§push(this.§&!=§);
                                    loop12:
                                    while(§§pop())
                                    {
                                       loop13:
                                       while(_loc1_ || _loc2_)
                                       {
                                          addr71:
                                          if(_loc1_ || _loc2_)
                                          {
                                             if(!§8!A§.movieClip.contains(this.§&!=§))
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§&!=§);
                                                   if(!_loc1_)
                                                   {
                                                      break;
                                                      addr45:
                                                   }
                                                   §§pop().§;"F§();
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && this))
                                                      {
                                                         if(_loc1_ || this)
                                                         {
                                                            continue;
                                                         }
                                                         continue loop13;
                                                      }
                                                   }
                                                   continue loop11;
                                                }
                                                continue loop12;
                                                addr39:
                                             }
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   if(!(_loc1_ || _loc1_))
                                                   {
                                                      break;
                                                   }
                                                   §8!A§.movieClip.removeChild(this.§&!=§);
                                                   continue loop11;
                                                }
                                                continue loop10;
                                                §§goto(addr45);
                                             }
                                             while(true)
                                             {
                                                if(!(_loc1_ || this))
                                                {
                                                   break loop10;
                                                }
                                                addr175:
                                                while(true)
                                                {
                                                   §<!O§.§,!z§(§^!s§);
                                                   break loop13;
                                                   §§goto(addr175);
                                                }
                                             }
                                             addr168:
                                          }
                                          while(true)
                                          {
                                             §§push(this.§+!v§);
                                             addr184:
                                             while(true)
                                             {
                                                §§pop().stop();
                                                break loop11;
                                             }
                                             §§goto(addr71);
                                          }
                                       }
                                       while(_loc1_ || this)
                                       {
                                          continue loop0;
                                       }
                                       loop23:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§+!v§);
                                                if(!_loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr182);
                                                   }
                                                   §§goto(addr145);
                                                }
                                                §§goto(addr184);
                                                continue loop23;
                                             }
                                             addr176:
                                          }
                                          continue loop3;
                                       }
                                    }
                                    return;
                                 }
                                 while(true)
                                 {
                                    this.§+!v§ = null;
                                    §§goto(addr168);
                                 }
                              }
                              continue loop1;
                           }
                        }
                        else
                        {
                           §§goto(addr176);
                        }
                     }
                     while(true)
                     {
                        §§pop().stop();
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      protected function §2"6§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            (§8!A§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(param1);
            while(true)
            {
               (§8!A§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(param1);
               while(!_loc3_)
               {
                  (§8!A§.getItemByName("Button_NextLevel") as §@_§).setComponentVisualState(param1);
                  while(_loc2_)
                  {
                     (§8!A§.getItemByName("Button_CutScene") as §@_§).setComponentVisualState(param1);
                     if(!_loc3_)
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
      
      private function §@!X§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§]!"§ = null;
         if(!_loc4_)
         {
            if(this.§96§)
            {
               if(!(_loc4_ && this))
               {
                  addr37:
                  this.§96§.stop();
               }
               try
               {
                  this.§96§.removeEventListener(TimerEvent.TIMER,this.§9!k§);
                  if(_loc5_ || _loc2_)
                  {
                     addr68:
                     var _loc2_:int = 0;
                     if(!_loc4_)
                     {
                        var _loc3_:* = this.§4"B§;
                        if(!_loc4_)
                        {
                           loop0:
                           while(§§hasnext(_loc3_,_loc2_))
                           {
                              §§push(§§newactivation());
                              loop1:
                              while(true)
                              {
                                 §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                                 loop2:
                                 while(true)
                                 {
                                    addr116:
                                    while(true)
                                    {
                                       if(!§8!A§.contains(splash))
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          §8!A§.removeChild(splash);
                                          addr126:
                                          while(_loc5_)
                                          {
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           addr141:
                           if(_loc5_ || _loc2_)
                           {
                              this.§4"B§ = new Vector.<§]!"§>();
                              do
                              {
                                 this.§0D§();
                              }
                              while(!_loc5_);
                              
                              return;
                              addr169:
                           }
                           §§goto(addr169);
                        }
                        while(true)
                        {
                           §§goto(addr89);
                        }
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr169);
               }
               catch(e:Error)
               {
               }
            }
            §§goto(addr68);
         }
         §§goto(addr37);
      }
      
      protected function §0D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§8!A§.getItemByName("TextField_BestScore") as §&!>§).setVisibility(false);
         }
         do
         {
            (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(false);
            do
            {
               (§8!A§.getItemByName("TextField_NewHighScore") as §&!>§).setVisibility(false);
            }
            while(!(_loc1_ || _loc1_));
            
         }
         while(_loc2_);
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      protected function §!!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §?R§();
            do
            {
               §8!^§(this.§2"%§());
            }
            while(_loc1_);
            
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:String = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!(_loc6_ && param2))
            {
               if("NEXT_LEVEL" === _loc5_)
               {
                  if(!(_loc6_ && param2))
                  {
                     §§push(0);
                     if(!(_loc7_ || param1))
                     {
                        addr223:
                     }
                  }
                  else
                  {
                     addr205:
                     §§push(4);
                     if(_loc7_ || param1)
                     {
                        §§goto(addr223);
                     }
                  }
                  addr228:
                  switch(§§pop())
                  {
                     case 0:
                        this.§!!6§();
                        break;
                     case 1:
                        §8!^§(this.§[!V§());
                        break loop0;
                        addr133:
                     case 2:
                        §8!^§(this.§[!V§());
                        addr106:
                        if(!_loc6_)
                        {
                           if(!(_loc7_ || param1))
                           {
                              break;
                           }
                           §§push(§9q§.§>!L§);
                           if(!_loc6_)
                           {
                              §§push(§§pop().§-[§());
                              if(_loc6_ && param3)
                              {
                                 continue;
                              }
                              §§push(§§pop());
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              addr86:
                              if(§§pop())
                              {
                                 addr89:
                                 §9q§.§>!L§.§?""§(_loc4_);
                                 if(_loc7_ || this)
                                 {
                                    addr51:
                                    break loop0;
                                 }
                                 break loop0;
                              }
                              §§goto(addr51);
                           }
                           §§goto(addr89);
                        }
                        else
                        {
                           §§goto(addr133);
                        }
                     case 3:
                        §<!O§.§'N§();
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              addr45:
                              §8!^§(this.§ [§());
                              break loop0;
                              addr50:
                           }
                           else
                           {
                              §§goto(addr89);
                           }
                        }
                        break loop0;
                     case 4:
                        § !g§.§;!'§.§%!N§();
                        if(!(_loc6_ && param1))
                        {
                           if(_loc7_)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 if(true)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr45);
                              }
                              else
                              {
                                 §§goto(addr106);
                              }
                           }
                           §§goto(addr50);
                        }
                  }
                  break;
               }
               if("REPLAY" === _loc5_)
               {
                  if(!(_loc6_ && param2))
                  {
                     addr180:
                     §§push(1);
                     if(!_loc7_)
                     {
                        §§goto(addr223);
                     }
                  }
                  else
                  {
                     addr198:
                     §§push(3);
                     if(_loc6_)
                     {
                     }
                  }
               }
               else if("WATCH_REPLAY" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     §§push(2);
                     if(!_loc7_)
                     {
                     }
                  }
                  else
                  {
                     §§goto(addr198);
                  }
               }
               else
               {
                  if("MENU" === _loc5_)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr198);
                     }
                     else
                     {
                        §§goto(addr205);
                     }
                  }
                  else if("FULLSCREEN_BUTTON" === _loc5_)
                  {
                     §§goto(addr205);
                  }
                  else
                  {
                     §§push(5);
                  }
                  §§goto(addr205);
               }
               §§goto(addr228);
               §§goto(addr205);
            }
            §§goto(addr180);
         }
      }
      
      protected function §[!V§() : String
      {
         return §?!#§.STATE_NAME;
      }
      
      protected function §2"%§() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function § [§() : String
      {
         return §]J§.STATE_NAME;
      }
   }
}
